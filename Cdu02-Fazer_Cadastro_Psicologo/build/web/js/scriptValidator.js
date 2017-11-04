$(document).ready(function() {
    $('.form').bootstrapValidator({
        message: 'O valor não é válido',
        excluded: [':disabled', ':hidden', ':not(:visible)'],
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            nome_completo: {
                validators: {
                    notEmpty: {
                        message: 'O campo é obrigatório'
                    },
                    stringLength: {
                        min: 1,
                        max: 1000
                    },
                    regexp: {
                        regexp: /^[a-zA-Z _\.]+$/,
                         message: 'Texto incompatível'
                    }
                }
            },
            login: {
                message: 'O login não é válido',
                validators: {
                    notEmpty: {
                        message: 'O campo é obrigatório!'
                    },
                    stringLength: {
                        min: 6,
                        max: 10,
                        message: 'O login tem entre 6 e 10 letras e/ou números'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/
                    }
                }
            },
            senha: {
                validators: {
                    notEmpty: {
                        message: 'Campo obrigatório!'
                    },
                    stringLength: {
                        min: 6,
                        max: 10,
                        message: 'A senha tem entre 6 e 10 letras e/ou números'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/
                    }
                }
            },
            conf_senha: {
                    validators: {
                        notEmpty: {
                            message: 'O campo é obrigatório'
                        },
                        identical: {
                            field: 'senha',
                            message: 'Ops... A senha não é igual'
                        },
                        different: {
                            field: 'login',
                            message: 'A senha não pode ser igual a o login'
                        }
                    }
                },
            rua: {
                validators: {
                    notEmpty: {
                        message: 'O campo é obrigatório'
                    },
                    stringLength: {
                        min: 1,
                        max: 1000,
                    },
                    regexp: {
                        regexp: /^[a-zA-Z _\.]+$/,
                         message: 'Texto incompatível'
                    }
                }
            },
            numero: {
                 validators: {
                     notEmpty: {
                         message: 'O campo é obrigatório'
                     },
                     regexp: {
                         regexp: /^[0-9_\.]+$/,
                          message: 'Texto incompatível'
                     }
                 }
             },
            bairro: {
                validators: {
                    notEmpty: {
                        message: 'O campo é obrigatório'
                    },
                    stringLength: {
                        min: 1,
                        max: 1000,
                    },
                    regexp: {
                        regexp: /^[a-zA-Z _\.]+$/,
                         message: 'Texto incompatível'
                    }
                }
            },
            cidade: {
                validators: {
                    notEmpty: {
                        message: 'O campo é obrigatório'
                    },
                    stringLength: {
                        min: 1,
                        max: 1000,
                    },
                    regexp: {
                        regexp: /^[a-zA-Z _\.]+$/,
                         message: 'Texto incompatível'
                    }
                }
            },
            select_atendimento: {
                validators: {
                    notEmpty: {
                        message: 'O campo é obrigatório'
                    }
                }
            },
            crp: {
                 validators: {
                     notEmpty: {
                         message: 'O campo é obrigatório'
                     },
                     regexp: {
                         regexp: /^[0-9_\.]+$/,
                          message: 'Texto incompatível'
                     }
                 }
             },
            contato: {
                 validators: {
                     regexp: {
                         regexp: /^[0-9 _\.]+$/,
                          message: 'Texto incompatível'
                     }
                 }
             },
            EMail: {
                validators: {
                    notEmpty: {
                        message: 'O campo obrigatório'
                    },
                    emailAddress: {
                        message: 'E-mail inválido'
                    }
                }
            }            
        }
    });
});
