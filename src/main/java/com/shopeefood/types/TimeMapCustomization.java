package com.shopeefood.types;

import lombok.*;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TimeMapCustomization<TOpen, TClose> {

    private TOpen tOpen;
    private TClose tClose;

    public static String getStringFromListTimeMapCustomization(@NonNull List<TimeMapCustomization<LocalTime, LocalTime>> timeMapCustomizations) {
        StringBuilder result = new StringBuilder();
        timeMapCustomizations.forEach(timeMapCustomization -> {
            result.append(timeMapCustomization.getTOpen().getHour());
            result.append(":");
            result.append(timeMapCustomization.getTOpen().getMinute());
            result.append(" | ");
        });
        result.delete(result.length() - 4, result.length());
        return result.toString();
    }

    public static List<TimeMapCustomization<LocalTime, LocalTime>> getListTimeMapCustomizationFromString(@NonNull String src) {
        List<TimeMapCustomization<LocalTime, LocalTime>> result = new ArrayList<>();
        String splitStr = " ";
        String[] str1 = src.split(splitStr);
        return result;
    }

}
