use criterion::{criterion_group, Criterion};

use aoc2023::day01;

fn bench_part1(c: &mut Criterion) {
    c.bench_function("day01::part1", |b| b.iter(|| day01::part1()));
}

fn bench_part2(c: &mut Criterion) {
    c.bench_function("day01::part2", |b| b.iter(|| day01::part2()));
}

criterion_group!(day01, bench_part1, bench_part2);
