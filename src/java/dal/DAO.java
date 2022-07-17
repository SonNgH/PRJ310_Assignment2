/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.*;

/**
 *
 * @author hongs
 */
public class DAO extends DBContext {

    public ArrayList<Student> getAllStudentByGroupCode(String groupcode) {
        ArrayList<Student> alist = new ArrayList<>();
        String sql = " select s.* , g.* from Student s, [Group] g, Enroll e\n"
                + "  where s.SID = e.SID and g.GroupID = e.GroupID and g.GroupCode like ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, "%" + groupcode + "%");
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getBoolean(4), rs.getString(5));
                alist.add(s);
            }
        } catch (Exception e) {
        }
        return alist;
    }

    public ArrayList<Instructor> getAllInstructor() {
        ArrayList<Instructor> ilist = new ArrayList<>();
        String sql = "  select * from Instructor";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Instructor i = new Instructor(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                ilist.add(i);
            }
        } catch (Exception e) {
        }
        return ilist;
    }

    public ArrayList<Slot> getAllSlot() {

        ArrayList<Slot> slist = new ArrayList<>();
        String sql = "  select * from Slot s, [Group] g, Room r, Instructor i, [Subject] sub\n"
                + "  where s.GroupID = g.GroupID and r.RoomID =s.RoomID and i.InstructorID = g.InstructorID and sub.SubID =g.SubID";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Room r = new Room(rs.getString("RoomCode"));
                Group g = new Group(rs.getInt("GroupID"), rs.getString("GroupCode"), new Subject(rs.getString("SubCode")), rs.getString("Term"), rs.getString("Campus"));
                Slot s = new Slot(rs.getInt(1), g, rs.getDate(3), rs.getInt(4), r, rs.getBoolean(6));
                slist.add(s);
            }

        } catch (Exception e) {
        }
        return slist;
    }

    public Slot getSlotById(int sid) {
        String sql = "  select * from Slot s, [Group] g, Room r, Instructor i, [Subject] sub\n"
                + "  where s.GroupID = g.GroupID and r.RoomID =s.RoomID and i.InstructorID = g.InstructorID and sub.SubID =g.SubID\n"
                + "  and  s.SlotID = ? ";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Room r = new Room(rs.getString("RoomCode"));
                Subject sub = new Subject(rs.getString("SubCode"));
                Instructor i = new Instructor(rs.getInt("InstructorID"), rs.getString("UserName"));
                Group g = new Group(rs.getInt("GroupID"), rs.getString("GroupCode"), sub, rs.getString("Term"), rs.getString("Campus"), rs.getString("Department"), i);
                Slot s = new Slot(rs.getInt(1), g, rs.getDate(3), rs.getInt(4), r, rs.getBoolean(6));
                return s;
            }

        } catch (Exception e) {
        }
        return null;
    }

    public void updateSlotStatus(int sid) {
        try {
            String sql = "update Slot set status = 1 where SlotID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sid);
            stm.executeUpdate();
        } catch (Exception e) {
        }

    }

    public ArrayList<Attendance> getAllCheckedStudent(int sid) {
        ArrayList<Attendance> alist = new ArrayList<>();
        String sql = "  select * from CheckAttedance ca , Student s \n"
                + "  where ca.[SID]= s.SID  and ca.SlotID = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Slot s = new Slot();
                s.setId(rs.getInt(2));
                Student stu = new Student(rs.getInt(7), rs.getString(8), rs.getString(9), rs.getBoolean(10), rs.getString(11));
                Attendance c = new Attendance(rs.getInt(1), s, rs.getBoolean(4), stu, rs.getString(5), rs.getString(6));
                alist.add(c);
            }
        } catch (Exception e) {
        }
        return alist;
    }

    public void insertAttendance(int sid, int stid, int checkAttend, String taker) {
        String sql = "INSERT [CheckAttedance] ( [SlotID], [SID], [CheckAttendance], [Taker], [RecordTime]) \n"
                + "VALUES ( ?, ?, ?, ?,  GETDATE())";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sid);
            stm.setInt(2, stid);
            stm.setInt(3, checkAttend);
            stm.setString(4, taker);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteSlot(int sid) {
        String sql = "delete CheckAttedance where SlotID =?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sid);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args) {
        DAO dao = new DAO();
        System.out.println(dao.getAllCheckedStudent(1).size());
    }
}