//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ams {
    /// 音频审核输出参数
    public struct AudioResult: TCOutputModel {
        /// 该字段用于返回审核内容是否命中审核模型；取值：0（**未命中**）、1（**命中**）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hitFlag: Int64?

        /// 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 该字段用于返回后续操作建议。当您获取到判定结果后，返回值表示具体的后续建议操作。<br>
        /// 返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?

        /// 该字段用于返回当前标签下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?

        /// 该字段用于返回音频文件经ASR识别后的文本信息。最长可识别**5小时**的音频文件，若超出时长限制，接口将会报错。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let text: String?

        /// 该字段用于返回音频片段存储的链接地址，该地址有效期为1天。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let url: String?

        /// 该字段用于返回音频文件的时长，单位为秒。
        public let duration: String

        /// 该字段用于返回额外附加信息，不同客户或Biztype下返回信息不同。
        public let extra: String

        /// 该字段用于返回音频文件经ASR识别后产生的文本的详细审核结果。具体结果内容请参见AudioResultDetailLanguageResult数据结构的细节描述。
        public let textResults: [AudioResultDetailTextResult]

        /// 该字段用于返回音频文件呻吟检测的详细审核结果。具体结果内容请参见AudioResultDetailMoanResult数据结构的细节描述。
        public let moanResults: [AudioResultDetailMoanResult]

        /// 该字段用于返回音频小语种检测的详细审核结果。具体结果内容请参见AudioResultDetailLanguageResult数据结构的细节描述。
        public let languageResults: [AudioResultDetailLanguageResult]

        /// 该字段用于返回当前标签（Lable）下的二级标签。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabel: String?

        /// 识别类标签结果信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recognitionResults: [RecognitionResult]?

        enum CodingKeys: String, CodingKey {
            case hitFlag = "HitFlag"
            case label = "Label"
            case suggestion = "Suggestion"
            case score = "Score"
            case text = "Text"
            case url = "Url"
            case duration = "Duration"
            case extra = "Extra"
            case textResults = "TextResults"
            case moanResults = "MoanResults"
            case languageResults = "LanguageResults"
            case subLabel = "SubLabel"
            case recognitionResults = "RecognitionResults"
        }
    }

    /// 音频语言种类检测结果
    public struct AudioResultDetailLanguageResult: TCOutputModel {
        /// 该字段用于返回对应的语言种类信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 该参数用于返回当前标签下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高**），越高代表音频越有可能属于当前返回的语种标签；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?

        /// 该参数用于返回对应语种标签的片段在音频文件内的开始时间，单位为毫秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startTime: Float?

        /// 该参数用于返回对应语种标签的片段在音频文件内的结束时间，单位为毫秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endTime: Float?

        /// *内测中，敬请期待*
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabelCode: String?

        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case score = "Score"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case subLabelCode = "SubLabelCode"
        }
    }

    /// 音频呻吟审核结果
    public struct AudioResultDetailMoanResult: TCOutputModel {
        /// 该字段用于返回检测结果需要检测的内容类型，此处固定为**Moan**（呻吟）以调用呻吟检测功能。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 该字段用于返回呻吟检测的置信度，取值范围：0（**置信度最低**）-100（**置信度最高**），越高代表音频越有可能属于呻吟内容。
        public let score: Int64

        /// 该字段用于返回对应呻吟标签的片段在音频文件内的开始时间，单位为毫秒。
        public let startTime: Float

        /// 该字段用于返回对应呻吟标签的片段在音频文件内的结束时间，单位为毫秒。
        public let endTime: Float

        /// *内测中，敬请期待*
        public let subLabelCode: String

        /// 该字段用于返回当前标签（Lable）下的二级标签。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabel: String?

        /// 该字段用于返回基于恶意标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        public let suggestion: String

        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case score = "Score"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case subLabelCode = "SubLabelCode"
            case subLabel = "SubLabel"
            case suggestion = "Suggestion"
        }
    }

    /// 音频说话人声纹识别返回结果
    public struct AudioResultDetailSpeakerResult: TCOutputModel {
        /// 该字段用于返回检测结果需要检测的内容类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 该字段用于返回呻吟检测的置信度，取值范围：0（置信度最低）-100（置信度最高），越高代表音频越有可能属于说话人声纹。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?

        /// 该字段用于返回对应说话人的片段在音频文件内的开始时间，单位为毫秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startTime: Float?

        /// 该字段用于返回对应说话人的片段在音频文件内的结束时间，单位为毫秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endTime: Float?

        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case score = "Score"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// 音频ASR文本审核结果
    public struct AudioResultDetailTextResult: TCOutputModel {
        /// 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 该字段用于返回ASR识别出的文本内容命中的关键词信息，用于标注内容违规的具体原因（如：加我微信）。该参数可能会有多个返回值，代表命中的多个关键词；若返回值为空，Score不为空，则代表识别结果所对应的恶意标签（Label）来自于语义模型判断的返回值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keywords: [String]?

        /// 该字段**仅当Label为Custom：自定义关键词时该参数有效**,用于返回自定义库的ID，以方便自定义库管理和配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libId: String?

        /// 该字段**仅当Label为Custom：自定义关键词时该参数有效**,用于返回自定义库的名称,以方便自定义库管理和配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libName: String?

        /// 该字段用于返回当前标签下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高**），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?

        /// 该字段用于返回后续操作建议。当您获取到判定结果后，返回值表示具体的后续建议操作。<br>
        /// 返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?

        /// 该字段用于返回自定义关键词对应的词库类型，取值为**1**（黑白库）和**2**（自定义关键词库），若未配置自定义关键词库,则默认值为1（黑白库匹配）。
        public let libType: Int64

        /// 该字段用于返回当前标签（Lable）下的二级标签。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabel: String?

        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case keywords = "Keywords"
            case libId = "LibId"
            case libName = "LibName"
            case score = "Score"
            case suggestion = "Suggestion"
            case libType = "LibType"
            case subLabel = "SubLabel"
        }
    }

    /// 表示声音段信息
    public struct AudioSegments: TCOutputModel {
        /// 该字段用于返回音频片段的开始时间，单位为秒。对于点播文件，该参数代表对应音频相对于完整音轨的偏移时间，如0（代表不偏移），5（音轨开始后5秒），10（音轨开始后10秒）；对于直播文件，该参数则返回对应音频片段开始时的Unix时间戳，如：1594650717。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offsetTime: String?

        /// 该字段用于返回音频片段的具体审核结果，详细内容敬请参考AudioResult数据结构的描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: AudioResult?

        enum CodingKeys: String, CodingKey {
            case offsetTime = "OffsetTime"
            case result = "Result"
        }
    }

    /// 文件桶信息
    /// 参考腾讯云存储相关说明 https://cloud.tencent.com/document/product/436/44352
    public struct BucketInfo: TCInputModel {
        /// 该字段用于标识腾讯云对象存储的存储桶名称,关于文件桶的详细信息敬请参考 [腾讯云存储相关说明](https://cloud.tencent.com/document/product/436/44352)。
        public let bucket: String

        /// 该字段用于标识腾讯云对象存储的托管机房的分布地区，对象存储 COS 的数据存放在这些地域的存储桶中。
        public let region: String

        /// 该字段用于标识腾讯云对象存储的对象Key,对象z作为基本单元被存放在存储桶中；用户可以通过腾讯云控制台、API、SDK 等多种方式管理对象。有关对象的详细描述敬请参阅相应 [产品文档](https://cloud.tencent.com/document/product/436/13324)。
        public let object: String

        public init(bucket: String, region: String, object: String) {
            self.bucket = bucket
            self.region = region
            self.object = object
        }

        enum CodingKeys: String, CodingKey {
            case bucket = "Bucket"
            case region = "Region"
            case object = "Object"
        }
    }

    /// 输入信息详情
    public struct InputInfo: TCOutputModel {
        /// 该字段表示文件访问类型，取值为**URL**（资源链接）和**COS** (腾讯云对象存储)。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?

        /// 该字段表示文件访问的链接地址，格式为标准URL格式。<br> 备注：当Type为URL时此字段不为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let url: String?

        /// 该字段表示文件访问的腾讯云存储桶信息。<br> 备注：当Type为COS时此字段不为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bucketInfo: BucketInfo?

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case url = "Url"
            case bucketInfo = "BucketInfo"
        }
    }

    /// 媒体类型
    public struct MediaInfo: TCOutputModel {
        /// 该字段用于返回传入的媒体文件的编码格式，如wav、mp3、aac、flac、amr、3gp、 m4a、wma、ogg、ape等。
        public let codecs: String

        /// 该字段用于返回对传入的流媒体文件进行分片的片段时长，单位为秒。**默认值为15秒**，支持用户自定义配置。
        public let duration: Int64

        /// *内测中，敬请期待*
        public let width: Int64

        /// *内测中，敬请期待*
        public let height: Int64

        /// *内测中，敬请期待*
        public let thumbnail: String

        enum CodingKeys: String, CodingKey {
            case codecs = "Codecs"
            case duration = "Duration"
            case width = "Width"
            case height = "Height"
            case thumbnail = "Thumbnail"
        }
    }

    /// 呻吟低俗检测结果
    public struct MoanResult: TCOutputModel {
        /// 固定取值为Moan（呻吟/娇喘），如音频中无复杂类型「MoanResult」的返回则代表改音频中无呻吟/娇喘相关违规内容；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 机器判断当前分类的置信度，取值范围：0~100。分数越高，表示越有可能属于当前分类。
        /// （如：Moan 99，则该样本属于呻吟/娇喘的置信度非常高。）
        public let score: Int64

        /// 建议您拿到判断结果后的执行操作。
        /// 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        public let suggestion: String

        /// 违规事件开始时间，单位为毫秒（ms）；
        public let startTime: Float

        /// 违规事件结束时间，单位为毫秒（ms）；
        public let endTime: Float

        /// 该字段用于返回当前标签（Lable）下的二级标签。
        /// 注意：此字段可能返回null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabel: String?

        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case score = "Score"
            case suggestion = "Suggestion"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case subLabel = "SubLabel"
        }
    }

    /// 识别类标签结果信息
    public struct RecognitionResult: TCOutputModel {
        /// 可能的取值有：Teenager 、Gender
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 识别标签列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tag]?

        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case tags = "Tags"
        }
    }

    /// 用于表示数据存储的相关信息
    public struct StorageInfo: TCInputModel {
        /// 该字段表示文件访问类型，取值为**URL**（资源链接）和**COS** (腾讯云对象存储)；该字段应当与传入的访问类型相对应，可用于强校验并方便系统快速识别访问地址；若不传入此参数，则默认值为URL，此时系统将自动判定访问地址类型。
        public let type: String?

        /// 该字段表示文件访问的链接地址，格式为标准URL格式。<br> 备注：当Type为URL时此字段不为空，该参数与BucketInfo参数须传入其中之一
        public let url: String?

        /// 该字段表示文件访问的腾讯云存储桶信息。<br> 备注：当Type为COS时此字段不为空，该参数与Url参数须传入其中之一。
        public let bucketInfo: BucketInfo?

        public init(type: String? = nil, url: String? = nil, bucketInfo: BucketInfo? = nil) {
            self.type = type
            self.url = url
            self.bucketInfo = bucketInfo
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case url = "Url"
            case bucketInfo = "BucketInfo"
        }
    }

    /// 音频切片识别标签
    public struct Tag: TCOutputModel {
        /// 根据Label字段确定具体名称：
        /// 当Label 为Teenager 时 Name可能取值有：Teenager
        /// 当Label 为Gender 时 Name可能取值有：Male 、Female
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 置信分：0～100，数值越大表示置信度越高
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?

        /// 识别开始偏移时间，单位：毫秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startTime: Float?

        /// 识别结束偏移时间，单位：毫秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endTime: Float?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case score = "Score"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// 任务数据
    public struct TaskData: TCOutputModel {
        /// 该字段用于返回音频审核任务数据所对应的数据ID，方便后续查询和管理审核任务。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataId: String?

        /// 该字段用于返回音频审核任务所生成的任务ID，用于标识具体审核任务，方便后续查询和管理。
        public let taskId: String

        /// 该字段用于返回所查询内容的任务状态。
        /// <br>取值：**FINISH**（任务已完成）、**PENDING** （任务等待中）、**RUNNING** （任务进行中）、**ERROR** （任务出错）、**CANCELLED** （任务已取消）。
        public let status: String

        /// 该字段用于返回音频审核任务所对应的任务名称，方便后续查询和管理审核任务。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 该字段用于返回调用音频审核接口时传入的BizType参数，方便数据的辨别和管理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bizType: String?

        /// 该字段用于返回调用音频审核接口时输入的音频审核类型，取值为：**AUDIO**（点播音频）和**LIVE_AUDIO**（直播音频），默认值为AUDIO。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?

        /// 该字段用于返回基于恶意标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?

        /// 输入信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mediaInfo: MediaInfo?

        /// 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let labels: [TaskLabel]?

        /// 该字段用于返回被查询任务创建的时间，格式采用 ISO 8601标准。
        public let createdAt: String

        /// 该字段用于返回被查询任务最后更新时间，格式采用 ISO 8601标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updatedAt: String?

        enum CodingKeys: String, CodingKey {
            case dataId = "DataId"
            case taskId = "TaskId"
            case status = "Status"
            case name = "Name"
            case bizType = "BizType"
            case type = "Type"
            case suggestion = "Suggestion"
            case mediaInfo = "MediaInfo"
            case labels = "Labels"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
        }
    }

    /// 任务筛选器
    public struct TaskFilter: TCInputModel {
        /// 该字段用于传入任务对应的业务类型供筛选器进行筛选。Biztype为策略的具体的编号，用于接口调度，在内容安全控制台中可配置。不同Biztype关联不同的业务场景与审核策略，调用前请确认正确的Biztype。Biztype仅为**数字、字母与下划线的组合**，长度为3-32个字符。<br>备注：在不传入该参数时筛选器默认不筛选业务类型。
        public let bizType: String?

        /// 该字段用于传入音频审核对应的任务类型供筛选器进行筛选，取值为：**VIDEO**（点播视频审核），**AUDIO**（点播音频审核）， **LIVE_VIDEO**（直播视频审核）, **LIVE_AUDIO**（直播音频审核）。<br>备注：在不传入该参数时筛选器默认不筛选任务类型。
        public let type: String?

        /// 该字段用于传入音频审核对应的建议操作供筛选器进行筛选，取值为：**Block**：建议屏蔽，**Review**：建议人工复审，**Pass**：建议通过。<br>备注：在不传入该参数时筛选器默认不筛选建议操作。
        public let suggestion: String?

        /// 该字段用于传入审核任务的任务状态供筛选器进行筛选，取值为：**FINISH**（任务已完成）、**PENDING** （任务等待中）、**RUNNING** （任务进行中）、**ERROR** （任务出错）、**CANCELLED** （任务已取消）。<br>备注：在不传入该参数时筛选器默认不筛选任务状态。
        public let taskStatus: String?

        public init(bizType: String? = nil, type: String? = nil, suggestion: String? = nil, taskStatus: String? = nil) {
            self.bizType = bizType
            self.type = type
            self.suggestion = suggestion
            self.taskStatus = taskStatus
        }

        enum CodingKeys: String, CodingKey {
            case bizType = "BizType"
            case type = "Type"
            case suggestion = "Suggestion"
            case taskStatus = "TaskStatus"
        }
    }

    /// 音视频任务数据结构
    public struct TaskInput: TCInputModel {
        /// 选填参数，该字段表示您为待检测对象分配的数据ID，传入后可方便您对文件进行标识和管理。<br>取值：由英文字母（大小写均可）、数字及四个特殊符号（_，-，@，#）组成，**长度不超过64个字符**。
        public let dataId: String?

        /// 选填参数，该字段表示音频审核任务所对应的任务名称，方便后续查询和管理审核任务。
        public let name: String?

        /// 必填参数，该字段表示审核文件的访问参数，用于获取审核媒体文件，该参数内包括访问类型和访问地址。
        public let input: StorageInfo?

        public init(dataId: String? = nil, name: String? = nil, input: StorageInfo? = nil) {
            self.dataId = dataId
            self.name = name
            self.input = input
        }

        enum CodingKeys: String, CodingKey {
            case dataId = "DataId"
            case name = "Name"
            case input = "Input"
        }
    }

    /// 用于返回审核任务输出的标签
    public struct TaskLabel: TCOutputModel {
        /// 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Normal**：正常，**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 该字段用于返回当前标签对应的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?

        /// 该字段用于返回当前标签（Label）下的置信度，取值范围：0（**置信度最低**）-100（**置信度最高** ），越高代表文本越有可能属于当前返回的标签；如：*色情 99*，则表明该文本非常有可能属于色情内容；*色情 0*，则表明该文本不属于色情内容。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?

        /// 该字段用于返回当前标签（Lable）下的二级标签。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabel: String?

        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case suggestion = "Suggestion"
            case score = "Score"
            case subLabel = "SubLabel"
        }
    }

    /// 创建任务时的返回结果
    public struct TaskResult: TCOutputModel {
        /// 该字段用于返回创建音频审核任务时在TaskInput结构内传入的DataId，用于标识具体审核任务。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataId: String?

        /// 该字段用于返回音频审核任务所生成的任务ID，用于标识具体审核任务，方便后续查询和管理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 该字段用于返回任务创建的状态，如返回OK则代表任务创建成功，其他返回值可参考公共错误码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let code: String?

        /// **仅在Code的返回值为错误码时生效**，用于返回错误的详情内容。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: String?

        enum CodingKeys: String, CodingKey {
            case dataId = "DataId"
            case taskId = "TaskId"
            case code = "Code"
            case message = "Message"
        }
    }

    /// 音频文本内容审核结果
    public struct TextResult: TCOutputModel {
        /// 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        /// 以及其他令人反感、不安全或不适宜的内容类型。
        /// 如音频中无复杂类型「TextResults」的返回则代表改音频中无相关违规内容；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 命中的关键词，为空则代表该违规内容出自于模型的判断；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keywords: [String]?

        /// 命中关键词库的库标识；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libId: String?

        /// 命中关键词库的名字；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libName: String?

        /// 机器判断当前分类的置信度，取值范围：0~100。分数越高，表示越有可能属于当前分类。
        /// （如：Porn 99，则该样本属于色情的置信度非常高。）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?

        /// 建议您拿到判断结果后的执行操作。
        /// 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?

        /// 自定义词库的类型，自定义词库相关的信息可登录控制台中查看；
        /// 1：自定义黑白库；
        /// 2：自定义库；
        public let libType: Int64

        /// 该字段用于返回当前标签（Lable）下的二级标签。
        /// 注意：此字段可能返回null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabel: String?

        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case keywords = "Keywords"
            case libId = "LibId"
            case libName = "LibName"
            case score = "Score"
            case suggestion = "Suggestion"
            case libType = "LibType"
            case subLabel = "SubLabel"
        }
    }
}
