class Vue {
    constructor(opt) {
        this._init(opt)
    }
    _init(opt) {
        this.$opt = opt
        this.$el = document.querySelector(opt.el)
        this.$data = opt.data
        this.$methods = opt.methods
        this._binding = {}

        this._observer(this.$data)
        this._complie(this.$el)
    }
    _observer(obj) {
        let value
        for (let key in obj) {
            if (obj.hasOwnProperty(key)) {
                value = obj[key]
                if (typeof value == 'object') {
                    this._observer(value)
                }
                this._binding[key] = {
                    _directives: []
                }

                Object.defineProperty(this.$data, key, {
                    configurable: true,
                    enumerable: true,
                    get: function () {
                        return value
                    },
                    set: (newVal)=> {
                        if (value !== newVal) {
                            value = newVal
                            this._binding[key]._directives.map(item => {
                                item.update()
                            })
                        }
                    }
                })
            }
        }
    }
    _complie(root) {
        let nodes = root.children
        let len = nodes.length
        for (let index = 0; index < len; index++) {
            let node = nodes[index]
            if (node.children.length) {
                this._complie(node)
            }
            if (node.hasAttribute('v-bind')) {
                let attr = node.getAttribute('v-bind')
                this._binding[attr]._directives.push(new Watcher('text', node, this, attr, 'innerHTML'))
            }
            if (node.hasAttribute('v-click')) {
                let attr = node.getAttribute('v-click')
                node.onclick = (() => {
                    return  this.$methods[attr].bind(this.$data)
                    
                })()
            }
            if (node.hasAttribute('v-model') && (node.tagName == 'INPUT' || node.tagName == 'TEXTAREA')) {
                node.addEventListener('input', ((key) => {
                    let attr = node.getAttribute('v-model')
                    this._binding[attr]._directives.push(new Watcher('input', node, this, attr, 'value'))
                    return ()=>{
                        this.$data[attr] = nodes[key].value
                    }
                })(index))
            }
        }

    }
}
class Watcher {
    constructor(name,el,vm,exp,attr) {
        this.exp = exp
        this.el = el
        this.name = name
        this.attr = attr
        this.vm =vm
        this.update()
    }
    update() {
        this.el[this.attr] = this.vm.$data[this.exp]
    }
}