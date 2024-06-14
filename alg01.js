/**
 * @param {number[]} seats
 * @param {number[]} students
 * @return {number}
 */
var minMovesToSeat = function(seats, students) {
    // Passo 1: Ordenar as listas de cadeiras e alunos
    seats.sort((a, b) => a - b);
    students.sort((a, b) => a - b);
        
    // Passo 2: Inicializar uma variável para contar o total de movimentos
    let totalMovements = 0;
    
    // Passo 3: Calcular os movimentos para cada aluno ir para a cadeira correspondente
    for (let i = 0; i < seats.length; i++) {
        let movement = Math.abs(seats[i] - students[i]);
        totalMovements += movement;
    }
    
    // Passo 4: Retornar o total de movimentos
    return totalMovements;
};

// Exemplo de uso:
console.log("Resultado:", minMovesToSeat([3, 1, 5], [2, 7, 4])); // Saída: 4
console.log("Resultado:", minMovesToSeat([4, 1, 5, 9], [1, 3, 2, 6])); // Saída: 7
console.log("Resultado:", minMovesToSeat([2, 2, 6, 6], [1, 3, 2, 6])); // Saída: 4
