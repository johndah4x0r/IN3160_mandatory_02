#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock

# Define primary time unit
# - changed from 'ns' to 'us' to compensate
#   for scale error in GTKWave
TIME_UNIT = "us"


@cocotb.test()
async def main_test(dut):
    """Try accessing the design."""

    dut._log.info("Running test...")

    await Timer(20, unit=TIME_UNIT)

    for i in range(0, 4):
        dut.sw.value = i
        await Timer(20, unit=TIME_UNIT)

    await Timer(40, unit=TIME_UNIT)
    
    dut._log.info("Running test...done")