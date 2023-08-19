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

import Logging
import NIOCore
import TecoCore

extension Live {
    /// CreateLiveStreamMonitor请求参数结构体
    public struct CreateLiveStreamMonitorRequest: TCRequest {
        /// 监播任务的输出信息。
        public let outputInfo: LiveStreamMonitorOutputInfo

        /// 待监播的输入流信息列表。
        public let inputList: [LiveStreamMonitorInputInfo]

        /// 监播任务名称。字段长度小于128字节（一个汉字两个字节）。
        public let monitorName: String?

        /// 监播事件通知策略。
        /// 不填默认为没有任何通知。
        public let notifyPolicy: LiveStreamMonitorNotifyPolicy?

        /// 智能语音识别语种设置：
        /// 0 关闭 1 中文 2 英文 3 日文 4 韩文。
        public let asrLanguage: UInt64?

        /// 智能文字识别语种设置：
        /// 0 关闭 1 中、英文。
        public let ocrLanguage: UInt64?

        /// 智能语音识别的输入列表，若开启语音识别则必填。
        /// （第1条输入流index为1）
        public let aiAsrInputIndexList: [UInt64]?

        /// 智能文字识别的输入列表，若开启文字识别则必填。
        /// （第1条输入流index为1）
        public let aiOcrInputIndexList: [UInt64]?

        /// 是否开启断流检测。
        public let checkStreamBroken: UInt64?

        /// 是否开启低帧率检测。
        public let checkStreamLowFrameRate: UInt64?

        /// 是否存储监播事件到监播报告，以及是否允许查询监播报告。
        public let allowMonitorReport: UInt64?

        /// 是否开启格式诊断。
        public let aiFormatDiagnose: UInt64?

        public init(outputInfo: LiveStreamMonitorOutputInfo, inputList: [LiveStreamMonitorInputInfo], monitorName: String? = nil, notifyPolicy: LiveStreamMonitorNotifyPolicy? = nil, asrLanguage: UInt64? = nil, ocrLanguage: UInt64? = nil, aiAsrInputIndexList: [UInt64]? = nil, aiOcrInputIndexList: [UInt64]? = nil, checkStreamBroken: UInt64? = nil, checkStreamLowFrameRate: UInt64? = nil, allowMonitorReport: UInt64? = nil, aiFormatDiagnose: UInt64? = nil) {
            self.outputInfo = outputInfo
            self.inputList = inputList
            self.monitorName = monitorName
            self.notifyPolicy = notifyPolicy
            self.asrLanguage = asrLanguage
            self.ocrLanguage = ocrLanguage
            self.aiAsrInputIndexList = aiAsrInputIndexList
            self.aiOcrInputIndexList = aiOcrInputIndexList
            self.checkStreamBroken = checkStreamBroken
            self.checkStreamLowFrameRate = checkStreamLowFrameRate
            self.allowMonitorReport = allowMonitorReport
            self.aiFormatDiagnose = aiFormatDiagnose
        }

        enum CodingKeys: String, CodingKey {
            case outputInfo = "OutputInfo"
            case inputList = "InputList"
            case monitorName = "MonitorName"
            case notifyPolicy = "NotifyPolicy"
            case asrLanguage = "AsrLanguage"
            case ocrLanguage = "OcrLanguage"
            case aiAsrInputIndexList = "AiAsrInputIndexList"
            case aiOcrInputIndexList = "AiOcrInputIndexList"
            case checkStreamBroken = "CheckStreamBroken"
            case checkStreamLowFrameRate = "CheckStreamLowFrameRate"
            case allowMonitorReport = "AllowMonitorReport"
            case aiFormatDiagnose = "AiFormatDiagnose"
        }
    }

    /// CreateLiveStreamMonitor返回参数结构体
    public struct CreateLiveStreamMonitorResponse: TCResponse {
        /// 监播任务ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let monitorId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case monitorId = "MonitorId"
            case requestId = "RequestId"
        }
    }

    /// 创建直播流监播任务
    ///
    /// 该接口用来创建直播流监播任务。
    @inlinable
    public func createLiveStreamMonitor(_ input: CreateLiveStreamMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveStreamMonitorResponse> {
        self.client.execute(action: "CreateLiveStreamMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建直播流监播任务
    ///
    /// 该接口用来创建直播流监播任务。
    @inlinable
    public func createLiveStreamMonitor(_ input: CreateLiveStreamMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveStreamMonitorResponse {
        try await self.client.execute(action: "CreateLiveStreamMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建直播流监播任务
    ///
    /// 该接口用来创建直播流监播任务。
    @inlinable
    public func createLiveStreamMonitor(outputInfo: LiveStreamMonitorOutputInfo, inputList: [LiveStreamMonitorInputInfo], monitorName: String? = nil, notifyPolicy: LiveStreamMonitorNotifyPolicy? = nil, asrLanguage: UInt64? = nil, ocrLanguage: UInt64? = nil, aiAsrInputIndexList: [UInt64]? = nil, aiOcrInputIndexList: [UInt64]? = nil, checkStreamBroken: UInt64? = nil, checkStreamLowFrameRate: UInt64? = nil, allowMonitorReport: UInt64? = nil, aiFormatDiagnose: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveStreamMonitorResponse> {
        self.createLiveStreamMonitor(.init(outputInfo: outputInfo, inputList: inputList, monitorName: monitorName, notifyPolicy: notifyPolicy, asrLanguage: asrLanguage, ocrLanguage: ocrLanguage, aiAsrInputIndexList: aiAsrInputIndexList, aiOcrInputIndexList: aiOcrInputIndexList, checkStreamBroken: checkStreamBroken, checkStreamLowFrameRate: checkStreamLowFrameRate, allowMonitorReport: allowMonitorReport, aiFormatDiagnose: aiFormatDiagnose), region: region, logger: logger, on: eventLoop)
    }

    /// 创建直播流监播任务
    ///
    /// 该接口用来创建直播流监播任务。
    @inlinable
    public func createLiveStreamMonitor(outputInfo: LiveStreamMonitorOutputInfo, inputList: [LiveStreamMonitorInputInfo], monitorName: String? = nil, notifyPolicy: LiveStreamMonitorNotifyPolicy? = nil, asrLanguage: UInt64? = nil, ocrLanguage: UInt64? = nil, aiAsrInputIndexList: [UInt64]? = nil, aiOcrInputIndexList: [UInt64]? = nil, checkStreamBroken: UInt64? = nil, checkStreamLowFrameRate: UInt64? = nil, allowMonitorReport: UInt64? = nil, aiFormatDiagnose: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveStreamMonitorResponse {
        try await self.createLiveStreamMonitor(.init(outputInfo: outputInfo, inputList: inputList, monitorName: monitorName, notifyPolicy: notifyPolicy, asrLanguage: asrLanguage, ocrLanguage: ocrLanguage, aiAsrInputIndexList: aiAsrInputIndexList, aiOcrInputIndexList: aiOcrInputIndexList, checkStreamBroken: checkStreamBroken, checkStreamLowFrameRate: checkStreamLowFrameRate, allowMonitorReport: allowMonitorReport, aiFormatDiagnose: aiFormatDiagnose), region: region, logger: logger, on: eventLoop)
    }
}
