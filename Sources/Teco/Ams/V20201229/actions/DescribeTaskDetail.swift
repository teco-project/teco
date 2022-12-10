//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ams {
    /// 查看任务详情
    ///
    /// 通过该接口可查看音频审核任务的详情信息，包括任务状态、检测结果、音频文件识别出的对应文本内容、检测结果所对应的恶意标签及推荐的后续操作等，具体输出内容可查看输出参数示例。<br>默认接口请求频率限制：**100次/秒**。
    @inlinable
    public func describeTaskDetail(_ input: DescribeTaskDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskDetailResponse > {
        self.client.execute(action: "DescribeTaskDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看任务详情
    ///
    /// 通过该接口可查看音频审核任务的详情信息，包括任务状态、检测结果、音频文件识别出的对应文本内容、检测结果所对应的恶意标签及推荐的后续操作等，具体输出内容可查看输出参数示例。<br>默认接口请求频率限制：**100次/秒**。
    @inlinable
    public func describeTaskDetail(_ input: DescribeTaskDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskDetailResponse {
        try await self.client.execute(action: "DescribeTaskDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTaskDetail请求参数结构体
    public struct DescribeTaskDetailRequest: TCRequestModel {
        /// 该字段表示创建音频审核任务后返回的任务ID（在Results参数中），用于标识需要查询任务详情的审核任务。
        /// <br>备注：查询接口单次最大查询量为**20条每次**。
        public let taskId: String
        
        /// 该布尔字段表示是否展示全部的音频片段，取值：True(展示全部的音频分片)、False(只展示命中审核规则的音频分片)；默认值为False。
        public let showAllSegments: Bool?
        
        public init (taskId: String, showAllSegments: Bool?) {
            self.taskId = taskId
            self.showAllSegments = showAllSegments
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case showAllSegments = "ShowAllSegments"
        }
    }
    
    /// DescribeTaskDetail返回参数结构体
    public struct DescribeTaskDetailResponse: TCResponseModel {
        /// 该字段用于返回创建音频审核任务后返回的任务ID（在Results参数中），用于标识需要查询任务详情的审核任务。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?
        
        /// 该字段用于返回调用音频审核接口时在Tasks参数内传入的数据ID参数，方便数据的辨别和管理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataId: String?
        
        /// 该字段用于返回调用音频审核接口时传入的BizType参数，方便数据的辨别和管理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bizType: String?
        
        /// 该字段用于返回调用音频审核接口时传入的TaskInput参数中的任务名称，方便任务的识别与管理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?
        
        /// 该字段用于返回所查询内容的任务状态。
        /// <br>取值：**FINISH**（任务已完成）、**PENDING** （任务等待中）、**RUNNING** （任务进行中）、**ERROR** （任务出错）、**CANCELLED** （任务已取消）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?
        
        /// 该字段用于返回调用音频审核接口时输入的音频审核类型，取值为：**AUDIO**（点播音频）和**LIVE_AUDIO**（直播音频），默认值为AUDIO。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?
        
        /// 该字段用于返回基于恶意标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?
        
        /// 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let labels: [TaskLabel]?
        
        /// 该字段用于返回审核服务的媒体内容信息，主要包括传入文件类型和访问地址。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inputInfo: InputInfo
        
        /// 该字段用于返回音频文件识别出的对应文本内容，最大支持**前1000个字符**。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioText: String?
        
        /// 该字段用于返回音频片段的审核结果，主要包括开始时间和音频审核的相应结果。<br>具体输出内容请参见AudioSegments及AudioResult数据结构的详细描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioSegments: [AudioSegments]?
        
        /// 当任务状态为Error时，该字段用于返回对应错误的类型；任务状态非Error时，默认返回为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorType: String?
        
        /// 当任务状态为Error时，该字段用于返回对应错误的详细描述，任务状态非Error时默认返回为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorDescription: String?
        
        /// 该字段用于返回被查询任务创建的时间，格式采用 ISO 8601标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdAt: String?
        
        /// 该字段用于返回被查询任务最后更新时间，格式采用 ISO 8601标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updatedAt: String?
        
        /// 该字段用于返回检测结果所对应的标签。如果未命中恶意，返回Normal，如果命中恶意，则返回Labels中优先级最高的标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case dataId = "DataId"
            case bizType = "BizType"
            case name = "Name"
            case status = "Status"
            case type = "Type"
            case suggestion = "Suggestion"
            case labels = "Labels"
            case inputInfo = "InputInfo"
            case audioText = "AudioText"
            case audioSegments = "AudioSegments"
            case errorType = "ErrorType"
            case errorDescription = "ErrorDescription"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
            case label = "Label"
            case requestId = "RequestId"
        }
    }
}