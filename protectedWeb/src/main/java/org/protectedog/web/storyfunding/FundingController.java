package org.protectedog.web.storyfunding;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.protectedog.common.Page;
import org.protectedog.common.Search;
import org.protectedog.service.domain.FileDog;
import org.protectedog.service.domain.Funding;
import org.protectedog.service.file.FileService;
import org.protectedog.service.storyfunding.FundingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/funding/*")
public class FundingController {

	/// Field
	@Autowired
	@Qualifier("fundingServiceImpl")
	private FundingService fundingService;

	@Autowired
	@Qualifier("fileServiceImpl")
	private FileService fileService;

	public FundingController() {
		System.out.println(this.getClass());
	}

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	@Value("#{commonProperties['fileSF']}")
	String fileroot;

	@Value("#{commonProperties['funding']}")
	String boardCode;

	@Value("#{commonProperties['SFTermsOne']}")
	String SFTermsOne;

	@Value("#{commonProperties['SFTermsTwo']}")
	String SFTermsTwo;

	@Value("#{commonProperties['SFTermsThree']}")
	String SFTermsThree;

	@Value("#{commonProperties['SFTermsFour']}")
	String SFTermsFour;

	@Value("#{commonProperties['SFTermsFive']}")
	String SFTermsFive;

	@RequestMapping(value = "addFunding", method = RequestMethod.GET)
	public String addFunding(HttpSession session) throws Exception {

		System.out.println("/funding/addfunding : GET");
		// ���߿� �������� ����//
		Funding funding = new Funding();
		String id = "user01";
		String nickName = "��ı";
		funding.setId(id);
		funding.setNickName(nickName);
		// ���濩�����//

		return "redirect:/funding/addFunding.jsp";
	}

	@RequestMapping(value = "addFunding", method = RequestMethod.POST)
	public String addFunding(@RequestParam("multiFile") ArrayList<String> multiFile,
			@ModelAttribute("funding") Funding funding, HttpSession session) throws Exception {

		System.out.println("/funding/addfunding : POST");

		// ���߿� �������� ����//
		String id = "user01";
		String nickName = "��ı";
		funding.setId(id);
		funding.setNickName(nickName);
		// ���濩�����//

		int voteTargetCount = (int) (funding.getFundTargetPay() * 0.001);

		funding.setMainFile(multiFile.get(0));
		funding.setVoteTargetCount(voteTargetCount);

		System.out.println(funding);
		fundingService.addFunding(funding);

		List<FileDog> listFile = new ArrayList<FileDog>();

		// ���ϵ�񿡳ֱ�
		for (String fileName : multiFile) {

			FileDog files = new FileDog();
			files.setBoardCode(boardCode);
			files.setFileName(fileName);
			files.setFileCode(0);
			files.setPostNo(funding.getPostNo());
			listFile.add(files);
		}
		fileService.addFile(listFile);

		return "redirect:/funding/getFunding?postNo=" + funding.getPostNo();
	}

	@RequestMapping(value = "getFunding", method = RequestMethod.GET)
	public String getFunding(@RequestParam("postNo") int postNo, Model model) throws Exception {

		System.out.println("/funding/getFunding ");

		Funding funding = fundingService.getFunding(postNo);
		List<FileDog> file = fileService.getFile(postNo);

		model.addAttribute("file", file);
		model.addAttribute("funding", funding);

		return "forward:/funding/getFunding.jsp";
	}

	@RequestMapping(value = "getTerms", method = RequestMethod.GET)
	public String getTerms(@RequestParam("termsTitle") String termsTitle, Model model) throws Exception {

		System.out.println("/funding/getTerms");

		List<String> termsList = new ArrayList<String>();
		termsList.add(SFTermsOne);
		termsList.add(SFTermsTwo);
		termsList.add(SFTermsThree);
		termsList.add(SFTermsFour);
		termsList.add(SFTermsFive);
		if (termsTitle.equals("SFPost")) {
			termsTitle = "�Ŀ���û��";
		} else if (termsTitle.equals("SFVote")) {
			termsTitle = "��ǥ�ϱ�";
		}

		model.addAttribute("termsList", termsList);
		model.addAttribute("termsTitle", termsTitle);

		return "forward:/funding/getTerms.jsp";
	}

	@RequestMapping(value = "updateFunding", method = RequestMethod.GET)
	public String updateFunding(@RequestParam("postNo") int postNo, Model model) throws Exception {

		System.out.println("/funding/updateFunding : GET");
		// Business Logic

		Funding funding = fundingService.getFunding(postNo);

		List<FileDog> file = fileService.getFile(postNo);

		model.addAttribute("funding", funding);
		model.addAttribute("file", file);

		return "forward:/funding/updateFunding.jsp";
	}

	@RequestMapping(value = "updateFunding", method = RequestMethod.POST)
	public String updateFunding(@ModelAttribute("funding") Funding funding,
			@RequestParam("multiFile") ArrayList<String> multiFile,
			@RequestParam("deleteFile") ArrayList<String> deleteFile, HttpSession session) throws Exception {

		System.out.println("/funding/updateFunding : POST"); // Business Logic

		System.out.println("multiFile:::" + multiFile);
		System.out.println("deleteFile:::" + deleteFile);

		if (deleteFile != null) {

			for (String fileName : deleteFile) {
				FileDog files = new FileDog();
				files.setFileName(fileName);
				files.setPostNo(funding.getPostNo());

				fileService.delFile(files);
			}
		}
		if (multiFile.size() != 0) {
			List<FileDog> listFile = new ArrayList<FileDog>();
			// ���ϵ�񿡳ֱ�
			for (String fileName : multiFile) {
				FileDog files = new FileDog();
				files.setBoardCode(boardCode);
				files.setFileName(fileName);
				files.setFileCode(0);
				files.setPostNo(funding.getPostNo());
				listFile.add(files);
			}
			fileService.addFile(listFile);
		}

		// ���߿� �������� ����//
		String id = "user01";
		String nickName = "��ı";
		funding.setId(id);
		funding.setNickName(nickName);

		List<FileDog> file =fileService.getFile(funding.getPostNo());
		funding.setMainFile(file.get(0).getFileName());
		// ���濩�����//

		int voteTargetCount = (int) (funding.getFundTargetPay() * 0.001);
		funding.setVoteTargetCount(voteTargetCount);

		fundingService.updateFunding(funding);

		return "redirect:/funding/getFunding?postNo=" + funding.getPostNo();
	}

	@RequestMapping(value = "listFunding")
	public String listFunding(@ModelAttribute("search") Search search, Model model, HttpSession session)
			throws Exception {

		System.out.println("/funding/listFunding : GET / POST");

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);

		// User user = (User) session.getAttribute("user");

		// ���濩�����//

		Map<String, Object> map = fundingService.listFunding(search);

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);
		System.out.println(resultPage);

		// Model �� View ����
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);

		return "forward:/funding/listFunding.jsp";
	}

}
