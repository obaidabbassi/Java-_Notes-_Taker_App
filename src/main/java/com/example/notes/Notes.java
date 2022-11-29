package com.example.notes;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


import java.util.Date;

@Entity
public class Notes {

    public int getNotesId() {
        return notesId;
    }

    public void setNotesId(int notesId) {
        this.notesId = notesId;
    }

    public String getNotesTitle() {
        return notesTitle;
    }

    public void setNotesTitle(String notesTitle) {
        this.notesTitle = notesTitle;
    }

    public String getNotesDes() {
        return notesDes;
    }

    public void setNotesDes(String notesDes) {
        this.notesDes = notesDes;
    }

    @Id
            @GeneratedValue(strategy = GenerationType.IDENTITY)

    int notesId;
    String notesTitle;

    public Notes() {
    }

    String notesDes;

Date date;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
