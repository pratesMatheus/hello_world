'use strict';

class Lancamento {
  constructor(idLancamento,mes, categoria, tipo, valor){
    this.idLancamento = idLancamento;
    this.mes = mes;
    if(tipo !== "receita" && tipo !== "despesa"){
      throw new Error("Lançamento está inválido: O Tipo deve ser receita ou despesa");
    }
    if(valor <= 0){
      throw new Error("Valor deve ser maior que zero (0)");
    }
    if(categoria === ''){
      throw new Error("Lançamento inválido: A Categoria é obrigatória");
    }
    this.categoria = categoria;
    this.tipo = tipo;
    this.valor = valor;
  }
}

module.exports = Lancamento;
