use criterion::criterion_main;

mod benchmarks;

criterion_main! {
    benchmarks::day01::day01
}