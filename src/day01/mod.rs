pub fn part1() -> u32 {
    include_str!("input.txt")
        .lines()
        .map(|line| line
            .chars()
            .filter(|c| c.is_digit(10))
            .collect()    
        )
        .map(|numbers: Vec<char>| format!("{}{}", numbers[0], numbers[numbers.len() - 1]))
        .map(|line| line.parse::<u32>().unwrap())
        .sum()
}

pub fn part2() -> u32 {
    include_str!("input.txt")
        .lines()
        .map(|line| line
            .replace("one", "one1one")
            .replace("two", "two2two")
            .replace("three", "three3three")
            .replace("four", "four4four")
            .replace("five", "five5five")
            .replace("six", "six6six")
            .replace("seven", "seven7seven")
            .replace("eight", "eight8eight")
            .replace("nine", "nine9nine")
            .chars()
            .filter(|c| c.is_digit(10))
            .collect()
        )
        .map(|numbers: Vec<char>| format!("{}{}", numbers[0], numbers[numbers.len() - 1]))
        .map(|line| line.parse::<u32>().unwrap())
        .sum()
}

pub fn execute(part: u8) {
    let result = match part {
        1 => part1(),
        2 => part2(),
        _ => panic!("This part is not implemented!")
    };

    println!("Day: {} (Part {}) resulted in {}!", 1, part, result);
}
