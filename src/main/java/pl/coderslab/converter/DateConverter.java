package pl.coderslab.converter;

import java.time.LocalDate;


import org.springframework.core.convert.converter.Converter;




public class DateConverter implements Converter<String, LocalDate> {


    public LocalDate convert(String source) {
        LocalDate date = LocalDate.parse(source);
        return date;
    }

}