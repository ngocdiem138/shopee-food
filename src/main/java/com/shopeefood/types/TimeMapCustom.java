package com.shopeefood.types;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TimeMapCustom<To, Tc> {

    private To tOpen;
    private Tc tClose;

    public static String getStringFromListTimeMapCustom(@NotNull List<TimeMapCustom<LocalTime, LocalTime>> timeMapCustomizations) {
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

    public static List<TimeMapCustom<LocalTime, LocalTime>> getListTimeMapCustomFromString(@NotNull String src) {
        List<TimeMapCustom<LocalTime, LocalTime>> result = new ArrayList<>();
        String splitStr = " ";
        String[] str1 = src.split(splitStr);
        return result;
    }

}
