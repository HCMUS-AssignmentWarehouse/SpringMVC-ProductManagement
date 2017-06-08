package com.iceteaviet;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.assertEquals;

/**
 * Created by Genius Doan on 6/6/2017.
 */

@RunWith(SpringRunner.class)
public class ApplicationTest {
    @Test
    public void getHello() throws Exception {
    }

    @Test
    public void sample() {
        assertEquals("HCMUS is gr8", "HCMUS is gr8");
    }
}
