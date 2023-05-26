# 눈치코치
[눈치코치] flutter 어플리케이션입니다.
* Platform : Android / iOS

# Convention
## Commit
팀 규칙을 따릅니다.
```markdown
// 띄어쓰기 주의
[TAG] TITLE (#ISSUE_NUMBER)
```
* TAG : 팀 노션 또는 디스코드를 참고하여 작성해주세요.
* TITLE : 커밋 내용을 요약해서 작성해주세요.
* ISSUE_NUMBER : 연관된 Issue의 작업번호를 사용해주세요.
* **띄어쓰기 주의하세요, 소괄호 양 옆에 띄어쓰기 있습니다**
### 예시
```
[Feat] API Helper 생성 (#2)
- api_utils.dart 추가
(이런식으로 다음줄부터 추가적인 내용을 작성해도 됩니다)
```

## Branch
* Branch의 이름은 Issue의 제목을 적절히 영어로 변형하여 사용합니다.
* 영어 소문자와 대시만 사용합니다.
* 새로운 기능을 추가할때는 `feature`로 분기하고, 수정할때는 `fix`로 분기하세요.
### 예시
```
Issue 명 : API Helper 생성
Branch 명 : feature/create-api-helper

Issue 명 : API Helper 오류 수정
Branch 명 : fix/api-helper
```

## Issue / Pull Request
* 작업내용을 요약할만한 제목을 사용합니다.
* Issue의 경우 제목 뒤에 아무것도 안붙여도 됩니다.
* 다만 Pull Request(PR)의 경우 연관된 이슈번호를 언급해야합니다.
* 이슈가 여러개일경우 쉼표로 이어씁니다.
* **띄어쓰기 주의하세요, 소괄호 양 옆에 띄어쓰기 있습니다.**
* **커밋앞에 쓰는 태그는 여기서 작성하지 않습니다.**
```
// ISSUE
API 응답 모델 추가

// PR
API 응답 모델 추가 (#1, #3, #4)
```

### Issue 작성 시 선택해야할 사항
* Assignees : 작업해야할 인원을 지정합니다, 자신을 지정해도됩니다.
* Labels : 상황에 맞게 적절히 선택합니다.
* Projects : `Mobile App Project`를 선택합니다.

### PR 작성 시 선택해야할 사항
* Reviewers : 기본적으로 `App`, `Project Manager` 그룹을 선택합니다.
* Assignees : 작업했던 인원을 지정합니다.
* Labels : 작업내용에 맞게 적절히 선택합니다.

### PR 작성 시 주의해야할 사항
* 합쳐질 브랜치와 자신이 작업한 브랜치를 선택합니다.
* **합쳐질 브랜치로 `master`를 선택하지 마세요**
* 대부분의 작업은 `develop` 브랜치로부터 분기됩니다. `develop` 브랜치를 선택하세요

## 브랜치 최신화 방법
* 최신화 과정 중 충돌이 발생할 수 있습니다.
```bash
git fetch # 작업정보 최신화
git switch [브랜치 이름] # 작업 브랜치 이동
git merge --no-commit [최신화 대상 브랜치]
```

## `git fetch` 및 `git pull` 과정 중 충돌(Conflict) 발생 시
* 내 작업 내용은 상관없이 원격저장소와 내용을 맞추고 싶을때 사용하면 됩니다.
* 최근 커밋이후 작업한 내용은 모두 사라집니다, 주의하세요
```bash
git fetch # 작업정보 최신화
git switch [브랜치 이름] # 작업 브랜치 이동
git reset --hard origin/HEAD # 작업 내역 초기화, master의 상태로 변경
git pull origin [브랜치 이름] # 브랜치 내용을 가져옵니다.
```