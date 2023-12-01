use clap::Parser;

mod day01;

#[derive(Parser)]
struct Args {
    #[arg(short, long, default_value_t = 1)]
    day: u8,

    #[arg(short, long, default_value_t = 1)]
    part: u8
}

fn main() {
    let args = Args::parse();
    
    match args.day {
        1 => day01::execute(args.part),
        _ => panic!("Day not implemented")
    }
}