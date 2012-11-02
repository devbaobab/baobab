# encoding: UTF-8
module UserHelper
  def job_list
     job_list = [
      ["회사원","0"],["공무원/공기업","1"],["전문직","2"],["프리랜서","3"],["자영업","4"],
      ["농/축/어업","5"],["주부","6"],["대학생","7"],["초중고생","8"],["무직","9"],["기타","10"],
     ]
  end
  
  def interest_array
      if @user.interest == nil
        interest = 'null'
      else
        interest = @user.interest.to_s
        if interest == ''
          interest = 'null'
        end
      end
      interest
  end
end
