import 'package:flutter/material.dart';
import 'ss.dart';

class SlidePage extends StatelessWidget {
  SlidePage({super.key});

  Map<String, int> score = {
    "E": 0,
    "I": 0,
    "S": 0,
    "N": 0,
    "T": 0,
    "F": 0,
    "J": 0,
    "P": 0
  };

  Map<String, dynamic> testPaper = {
    "questions": [
      {
        "question": "파티에서 당신은 어떻게 하시나요?",
        "options": {"a": "많은 사람과 상호 작용, 낯선 사람 포함", "b": "알고 있는 몇 명과 상호 작용"}
      },
      {
        "question": "당신은 다음 중 어떤 특성이 더 많이 나타납니까?",
        "options": {"a": "현실적이고 이성적인 편", "b": "상상적이고 공상적인 편"}
      },
      {
        "question": "다음 중 어떤 상황이 더 나쁜 것으로 생각하십니까?",
        "options": {"a": "머리가 구름 위에 떠 있을 때", "b": "막다른 상황에 빠져 있을 때"}
      },
      {
        "question": "당신은 다음 중 어떤 것에 더 감동받으십니까?",
        "options": {"a": "원칙", "b": "감정"}
      },
      {
        "question": "당신은 다음 중 어떤 것에 더 끌리십니까?",
        "options": {"a": "납득 가능한 것", "b": "감동적인 것"}
      },
      {
        "question": "일할 때 당신은 어떻게 선호하십니까?",
        "options": {"a": "마감일에 맞추어 일하기", "b": "그냥 언제든 일하기"}
      },
      {
        "question": "당신은 일반적으로 어떤 선택을 하십니까?",
        "options": {"a": "상당히 신중하게 선택", "b": "다소 충동적으로 선택"}
      },
      {
        "question": "파티에서 당신은 어떻게 하시나요?",
        "options": {"a": "늦게까지 머무르며 에너지가 높아짐", "b": "일찍 떠나며 에너지가 줄어듦"}
      },
      {
        "question": "다른 사람을 판단할 때 당신은 무엇에 더 영향을 받으십니까?",
        "options": {"a": "법보다 상황", "b": "상황보다 법"}
      },
      {
        "question": "다른 사람에게 접근할 때 당신의 경향은 다소 어떤 쪽에 가까운가요?",
        "options": {"a": "객관적인 편", "b": "개인적인 편"}
      },
      {
        "question": "당신은 어떤 스타일에 더 가깝습니까?",
        "options": {"a": "시간을 엄수하는 편", "b": "여유롭게 하는 편"}
      },
      {
        "question": "다음 중 어떤 것이 더 귀찮게 느껴지나요:",
        "options": {"a": "불완전한 상태", "b": "완료된 상태"}
      },
      {
        "question": "사회적 그룹에서 당신은 어떻게 행동하시나요:",
        "options": {"a": "다른 사람들의 일을 계속해서 알고 있음", "b": "소식을 뒤쳐지게 됨"}
      },
      {
        "question": "평범한 일을 할 때, 당신은 더 자주:",
        "options": {"a": "평소와 같은 방식대로 하는 편", "b": "자신만의 방식대로 하는 편"}
      },
      {
        "question": "작가는 다음 중 어떤 접근을 해야 한다고 생각하십니까:",
        "options": {"a": "“뜻하는 대로 말하고 말하는 대로 뜻하라”", "b": "유사성을 이용하여 표현하라"}
      },
      {
        "question": "다음 중 어떤 것이 더 매력적으로 다가옵니까:",
        "options": {"a": "사고의 일관성", "b": "조화로운 인간관계"}
      },
      {
        "question": "판단을 내릴 때 더 편안한 것은 어떤 유형인가요:",
        "options": {"a": "논리적인 판단", "b": "가치 판단"}
      },
      {
        "question": "당신은 다음 중 어떤 상태를 더 원하십니까:",
        "options": {"a": "결정된 상태", "b": "미결정의 상태"}
      },
      {
        "question": "당신은 다음 중 어떤 성향을 가지고 있다고 생각하십니까:",
        "options": {"a": "진지하고 결단력 있는 편", "b": "평온하고 쉽게 지내는 편"}
      },
      {
        "question": "전화할 때 다음 중 어떻게 하시나요:",
        "options": {"a": "대부분 모든 내용이 말로 나올 것이라고 의심하지 않음", "b": "말할 내용을 미리 연습함"}
      },
      {
        "question": "사실들은 다음 중 어떤 것을 더 잘 대표한다고 생각하십니까:",
        "options": {"a": "자체로 말한다", "b": "원리를 설명한다"}
      },
      {
        "question": "비전을 가진 사람들은 대체로 어떤 인상을 주십니까:",
        "options": {"a": "다소 귀찮게 느껴짐", "b": "꽤 매혹적으로 느껴짐"}
      },
      {
        "question": "당신은 주로 다음 중 어떤 유형의 사람인가요:",
        "options": {"a": "냉정한 성격", "b": "따뜻한 성격"}
      },
      {
        "question": "다음 중 어떤 것이 더 나쁜 것이라고 생각하십니까:",
        "options": {"a": "부당한 것", "b": "무자비한 것"}
      },
      {
        "question": "일반적으로 사건을 어떻게 처리하는 것이 좋다고 생각하십니까:",
        "options": {"a": "신중한 선택과 선택으로", "b": "무작위로 우연히"}
      },
      {
        "question": "다음 중 어떤 상황이 더 나아지는 것 같아요:",
        "options": {"a": "구매한 상황", "b": "구매 옵션을 가진 상황"}
      },
      {
        "question": "사람들과 함께 있을 때 당신은 어떻게 하시나요:",
        "options": {"a": "대화를 시작함", "b": "대기하여 다가오기를 기다림"}
      },
      {
        "question": "상식은 다음 중 어떻게 생각하십니까:",
        "options": {"a": "거의 의심할 여지가 없음", "b": "자주 의심될 여지가 있음"}
      },
      {
        "question": "어린이는 종종 다음 중 어떤 특성을 미흡하게 가집니까:",
        "options": {"a": "유용하게 행동하지 않음", "b": "상상력을 충분히 발휘하지 않음"}
      },
      {
        "question": "결정을 내릴 때 어떤 것과 더 편안하게 느끼십니까:",
        "options": {"a": "기준", "b": "감정"}
      },
      {
        "question": "다음 중 더 많이 나타나는 특성은 어떤 것이 더 어울리십니까:",
        "options": {"a": "단호한 경향", "b": "온화한 경향"}
      },
      {
        "question": "다음 중 어떤 능력이 더 칭찬 받을 만하다고 생각하십니까:",
        "options": {"a": "조직하고 체계적으로 일하는 능력", "b": "적응하고 대처하는 능력"}
      },
      {
        "question": "다음 중 어떤 가치를 더 중요하게 생각하십니까:",
        "options": {"a": "무한", "b": "열린 마음"}
      },
      {
        "question": "다른 사람들과의 새롭고 비정형적인 상호 작용이 당신에게 어떤 영향을 미치나요:",
        "options": {"a": "자극을 주고 활력을 불어넣음", "b": "당신의 에너지를 고갈시킴"}
      },
      {
        "question": "당신은 더 자주 다음 중 어떤 유형의 사람입니까:",
        "options": {"a": "실용적인 유형", "b": "환상적인 유형"}
      },
      {
        "question": "당신은 더 자주 다음 중 어떤 행동을 할 가능성이 더 높습니까:",
        "options": {"a": "다른 사람들이 어떻게 유용한지 보기", "b": "다른 사람들이 어떻게 생각하는지 보기"}
      },
      {
        "question": "다음 중 어떤 것이 더 만족스러운 것으로 여겨집니까:",
        "options": {"a": "문제를 철저히 논의하기", "b": "문제에 대한 합의 도출하기"}
      },
      {
        "question": "다음 중 어떤 것이 당신을 더 지배합니까:",
        "options": {"a": "당신의 머리", "b": "당신의 마음"}
      },
      {
        "question": "다음 중 어떤 작업에 더 편안하십니까:",
        "options": {"a": "계약에 따른 작업", "b": "임시적인 기회에 따른 작업"}
      },
      {
        "question": "당신은 주로 어떤 것을 찾는 경향이 있나요:",
        "options": {"a": "체계적인 것", "b": "무엇이든 나타나는 것"}
      },
      {
        "question": "다음 중 어떤 것을 선호하십니까:",
        "options": {"a": "짧은 접촉 시간을 가진 많은 친구들", "b": "더 긴 접촉 시간을 가진 몇몇 친구들"}
      },
      {
        "question": "다음 중 어떤 것을 더 중요하게 생각하십니까:",
        "options": {"a": "사실", "b": "원칙"}
      },
      {
        "question": "다음 중 어떤 것에 더 관심이 있나요:",
        "options": {"a": "생산과 유통", "b": "디자인과 연구"}
      },
      {
        "question": "다음 중 어떤 것이 더 칭찬으로 여겨집니까:",
        "options": {"a": "“매우 논리적인 사람이에요.”", "b": "“매우 감성적인 사람이에요.”"}
      },
      {
        "question": "당신 스스로에서 어떤 점을 더 중요하게 생각하십니까:",
        "options": {"a": "고수하는 것", "b": "헌신하는 것"}
      },
      {
        "question": "다음 중 어떤 것을 더 자주 선호하십니까:",
        "options": {"a": "최종적이고 변경 불가능한 진술", "b": "임시적이고 예비 진술"}
      },
      {
        "question": "당신은 결정을 내린 후에 더 편안합니까:",
        "options": {"a": "결정을 내린 후", "b": "결정을 내리기 전"}
      },
      {
        "question": "당신은 다음 중 어떤 특성을 더 가지고 있나요:",
        "options": {"a": "낯선 사람과 쉽게 그리고 길게 말하기", "b": "낯선 사람과 대화할 말을 찾기 어려움"}
      },
      {
        "question": "당신은 더 자주 어떤 것을 믿는 경향이 있나요:",
        "options": {"a": "경험", "b": "직감"}
      },
      {
        "question": "당신은 다음 중 어떤 특성이 더 많이 있나요:",
        "options": {"a": "실용적인 편", "b": "독창적인 편"}
      },
      {
        "question": "다음 중 어떤 사람에게 더 칭찬을 해야 한다고 생각하십니까:",
        "options": {"a": "명쾌한 이유를 가진 사람", "b": "강렬한 감정을 가진 사람 중 하나"}
      },
      {
        "question": "당신은 다음 중 어떤 성향이 더 강하나요:",
        "options": {"a": "공정한 마음가짐", "b": "동정심 있는 마음가짐"}
      },
      {
        "question": "대부분의 경우 어떤 것이 더 선호됩니까:",
        "options": {"a": "사물을 정리하고 정돈하는 것", "b": "사물이 자연스럽게 일어나게 두는 것"}
      },
      {
        "question": "관계에서 대부분의 일은 다음 중 어떻게 되어야 한다고 생각하십니까:",
        "options": {"a": "재협상 가능해야 한다", "b": "무작위하고 상황에 따라 달라져야 한다"}
      },
      {
        "question": "전화벨이 울리면 당신은 어떻게 하십니까:",
        "options": {"a": "먼저 받으려 빠르게 가려고 노력함", "b": "다른 사람이 받길 희망함"}
      },
      {
        "question": "당신 스스로에서 다음 중 어떤 특성을 더 중요하게 생각하십니까:",
        "options": {"a": "강한 현실 감각", "b": "생생한 상상력"}
      },
      {
        "question": "당신은 다음 중 어떤 것에 더 매료됩니까:",
        "options": {"a": "기본 원리와 기초", "b": "어떤 것의 오버톤과 변주"}
      },
      {
        "question": "다음 중 어떤 것이 더 큰 실수로 여겨집니까:",
        "options": {"a": "너무 열정적인 것", "b": "너무 객관적인 것"}
      },
      {
        "question": "당신은 기본적으로 다음 중 어떤 성향을 가지고 있다고 생각하십니까:",
        "options": {"a": "냉정한 사고를 가진 편", "b": "따뜻한 마음을 가진 편"}
      },
      {
        "question": "다음 상황 중 어떤 것이 더 매력적으로 다가옵니까:",
        "options": {"a": "계획적이고 일정화된 상황", "b": "계획이 없고 일정화되지 않은 상황"}
      },
      {
        "question": "당신은 다음 중 어떤 성향이 더 강하나요:",
        "options": {"a": "일상적이고 규칙적인 편", "b": "변덕스러운 편"}
      },
      {
        "question": "당신은 더 자주 어떤 성향을 갖고 있나요:",
        "options": {"a": "다가가기 쉬운 성격", "b": "다소 내성적인 성격"}
      },
      {
        "question": "글쓰기에서 당신은 다음 중 어떤 것을 선호하십니까:",
        "options": {"a": "더 직역적인 글쓰기", "b": "더 비유적인 글쓰기"}
      },
      {
        "question": "다른 사람들과 어려운 것은 무엇인가요:",
        "options": {"a": "다른 사람들과 공감하기 어려운 것", "b": "다른 사람들을 활용하기 어려운 것"}
      },
      {
        "question": "당신 스스로를 위해 더 바라는 것은 무엇입니까:",
        "options": {"a": "명료한 이성의 능력", "b": "감정의 강한 힘"}
      },
      {
        "question": "다음 중 어느 것이 더 큰 결함이라고 생각하십니까:",
        "options": {"a": "무분별한 것", "b": "비판적인 것"}
      },
      {
        "question": "당신은 어느 것을 더 선호하십니까:",
        "options": {"a": "계획된 사건", "b": "계획되지 않은 사건"}
      },
      {
        "question": "당신은 더 어떤 성향이 더 강한 편인가요:",
        "options": {"a": "계획적이고 신중한 편", "b": "즉흥적이고 순발력 있는 편"}
      }
    ]
  };

  PageController _pageController = PageController();

  String mbti = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('7조'),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      body: SafeArea(
        child: PageView.builder(
          controller: _pageController,
          itemCount: testPaper['questions'].length,
          itemBuilder: (context, index) => Container(
            child: Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Center(
                    child: Container(child: Text('${index + 1}')),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 250,
                  width: 280,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Text(
                    '${testPaper["questions"]![index]["question"]}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 70,
                  width: 280,
                  decoration: BoxDecoration(border: Border.all()),
                  child: index == 67
                      ? ElevatedButton(
                          onPressed: () {
                            score["J"] = score["J"]! + 1;
                            _pageController.nextPage(
                                duration: Duration(milliseconds: 10),
                                curve: Curves.easeIn);
                            if (score["E"]! >= score["I"]!) {
                              mbti = mbti + "E";
                            } else {
                              mbti = mbti + "I";
                            }
                            if (score["S"]! >= score["N"]!) {
                              mbti = mbti + "S";
                            } else {
                              mbti = mbti + "N";
                            }
                            if (score["T"]! >= score["F"]!) {
                              mbti = mbti + "T";
                            } else {
                              mbti = mbti + "F";
                            }
                            if (score["J"]! >= score["P"]!) {
                              mbti = mbti + "J";
                            } else {
                              mbti = mbti + "P";
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Ss(
                                    mbti_score: mbti,
                                    goFirst: () {
                                      mbti = '';
                                    },
                                  );
                                },
                              ),
                            );
                          },
                          child: Text(
                            '${testPaper["questions"]![index]["options"]["a"]}',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            if (index + 1 % 7 == 1 || index + 1 % 7 == 2) {
                              score["E"] = score["E"]! + 1;
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 10),
                                  curve: Curves.easeIn);
                            } else if (index + 1 % 7 == 3 ||
                                index + 1 % 7 == 4) {
                              score["S"] = score["S"]! + 1;
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 10),
                                  curve: Curves.easeIn);
                            } else if (index + 1 % 7 == 5 ||
                                index + 1 % 7 == 6) {
                              score["T"] = score["T"]! + 1;
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 10),
                                  curve: Curves.easeIn);
                            } else {
                              score["J"] = score["J"]! + 1;
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 10),
                                  curve: Curves.easeIn);
                            }
                          },
                          child: Text(
                            '${testPaper["questions"]![index]["options"]["a"]}',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 70,
                  width: 280,
                  decoration: BoxDecoration(border: Border.all()),
                  child: index == 67
                      ? ElevatedButton(
                          onPressed: () {
                            score["P"] = score["P"]! + 1;
                            _pageController.nextPage(
                                duration: Duration(milliseconds: 10),
                                curve: Curves.easeIn);
                            if (score["E"]! >= score["I"]!) {
                              mbti = mbti + "E";
                            } else {
                              mbti = mbti + "I";
                            }
                            if (score["S"]! >= score["N"]!) {
                              mbti = mbti + "S";
                            } else {
                              mbti = mbti + "N";
                            }
                            if (score["T"]! >= score["F"]!) {
                              mbti = mbti + "T";
                            } else {
                              mbti = mbti + "F";
                            }
                            if (score["J"]! >= score["P"]!) {
                              mbti = mbti + "J";
                            } else {
                              mbti = mbti + "P";
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Ss(
                                    mbti_score: mbti,
                                    goFirst: () {
                                      mbti = '';
                                    },
                                  );
                                },
                              ),
                            );
                          },
                          child: Text(
                            '${testPaper["questions"]![index]["options"]["b"]}',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            if (index + 1 % 7 == 1 || index + 1 % 7 == 2) {
                              score["I"] = score["I"]! + 1;
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 10),
                                  curve: Curves.easeIn);
                            } else if (index + 1 % 7 == 3 ||
                                index + 1 % 7 == 4) {
                              score["N"] = score["N"]! + 1;
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 10),
                                  curve: Curves.easeIn);
                            } else if (index + 1 % 7 == 5 ||
                                index + 1 % 7 == 6) {
                              score["F"] = score["F"]! + 1;
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 10),
                                  curve: Curves.easeIn);
                            } else {
                              score["P"] = score["P"]! + 1;
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 10),
                                  curve: Curves.easeIn);
                            }
                          },
                          child: Text(
                            '${testPaper["questions"]![index]["options"]["b"]}',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                ),
                Row(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width /
                            testPaper["questions"].length *
                            index),
                    Icon(Icons.directions_walk)
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 10,
                  height: 1,
                  decoration: BoxDecoration(color: Colors.black),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 80,
                  width: 310,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Text(
                    '넣어도 되고 안 넣어도 되는 MBTI 상식',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
