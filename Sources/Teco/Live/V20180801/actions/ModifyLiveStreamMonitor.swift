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
    /// ModifyLiveStreamMonitor请求参数结构体
    public struct ModifyLiveStreamMonitorRequest: TCRequest {
        /// 监播任务ID。
        public let monitorId: String

        /// 监播任务的名称。长度128字节以内（一个汉字两个字节）。
        public let monitorName: String?

        /// 监播任务输出信息。
        public let outputInfo: LiveStreamMonitorOutputInfo?

        /// 待监播的输入流信息。
        public let inputList: [LiveStreamMonitorInputInfo]?

        /// 监播事件通知策略。
        public let notifyPolicy: LiveStreamMonitorNotifyPolicy?

        /// 智能语音识别语种：
        /// 0 关闭 1 中文 2 英文 3 日文 4 韩文。
        public let asrLanguage: UInt64?

        /// 智能文字识别语种：
        /// 0 关闭 1 中、英文。
        public let ocrLanguage: UInt64?

        /// 语音识别输入流列表，1代表第一条输入流。
        public let aiAsrInputIndexList: [UInt64]?

        /// 文字识别输入流列表，1代表第一条输入流。
        public let aiOcrInputIndexList: [UInt64]?

        /// 是否开启断流检测。
        public let checkStreamBroken: UInt64?

        /// 是否开启低帧率检测。
        public let checkStreamLowFrameRate: UInt64?

        /// 是否存储监播事件到监播报告，以及是否允许查询监播报告。
        public let allowMonitorReport: UInt64?

        /// 是否开启格式诊断。
        public let aiFormatDiagnose: UInt64?

        public init(monitorId: String, monitorName: String? = nil, outputInfo: LiveStreamMonitorOutputInfo? = nil, inputList: [LiveStreamMonitorInputInfo]? = nil, notifyPolicy: LiveStreamMonitorNotifyPolicy? = nil, asrLanguage: UInt64? = nil, ocrLanguage: UInt64? = nil, aiAsrInputIndexList: [UInt64]? = nil, aiOcrInputIndexList: [UInt64]? = nil, checkStreamBroken: UInt64? = nil, checkStreamLowFrameRate: UInt64? = nil, allowMonitorReport: UInt64? = nil, aiFormatDiagnose: UInt64? = nil) {
            self.monitorId = monitorId
            self.monitorName = monitorName
            self.outputInfo = outputInfo
            self.inputList = inputList
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
            case monitorId = "MonitorId"
            case monitorName = "MonitorName"
            case outputInfo = "OutputInfo"
            case inputList = "InputList"
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

    /// ModifyLiveStreamMonitor返回参数结构体
    public struct ModifyLiveStreamMonitorResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改直播流监播任务
    ///
    /// 该接口用来修改直播流监播任务的配置。
    @inlinable @discardableResult
    public func modifyLiveStreamMonitor(_ input: ModifyLiveStreamMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveStreamMonitorResponse> {
        self.client.execute(action: "ModifyLiveStreamMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改直播流监播任务
    ///
    /// 该接口用来修改直播流监播任务的配置。
    @inlinable @discardableResult
    public func modifyLiveStreamMonitor(_ input: ModifyLiveStreamMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveStreamMonitorResponse {
        try await self.client.execute(action: "ModifyLiveStreamMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改直播流监播任务
    ///
    /// 该接口用来修改直播流监播任务的配置。
    @inlinable @discardableResult
    public func modifyLiveStreamMonitor(monitorId: String, monitorName: String? = nil, outputInfo: LiveStreamMonitorOutputInfo? = nil, inputList: [LiveStreamMonitorInputInfo]? = nil, notifyPolicy: LiveStreamMonitorNotifyPolicy? = nil, asrLanguage: UInt64? = nil, ocrLanguage: UInt64? = nil, aiAsrInputIndexList: [UInt64]? = nil, aiOcrInputIndexList: [UInt64]? = nil, checkStreamBroken: UInt64? = nil, checkStreamLowFrameRate: UInt64? = nil, allowMonitorReport: UInt64? = nil, aiFormatDiagnose: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveStreamMonitorResponse> {
        self.modifyLiveStreamMonitor(.init(monitorId: monitorId, monitorName: monitorName, outputInfo: outputInfo, inputList: inputList, notifyPolicy: notifyPolicy, asrLanguage: asrLanguage, ocrLanguage: ocrLanguage, aiAsrInputIndexList: aiAsrInputIndexList, aiOcrInputIndexList: aiOcrInputIndexList, checkStreamBroken: checkStreamBroken, checkStreamLowFrameRate: checkStreamLowFrameRate, allowMonitorReport: allowMonitorReport, aiFormatDiagnose: aiFormatDiagnose), region: region, logger: logger, on: eventLoop)
    }

    /// 修改直播流监播任务
    ///
    /// 该接口用来修改直播流监播任务的配置。
    @inlinable @discardableResult
    public func modifyLiveStreamMonitor(monitorId: String, monitorName: String? = nil, outputInfo: LiveStreamMonitorOutputInfo? = nil, inputList: [LiveStreamMonitorInputInfo]? = nil, notifyPolicy: LiveStreamMonitorNotifyPolicy? = nil, asrLanguage: UInt64? = nil, ocrLanguage: UInt64? = nil, aiAsrInputIndexList: [UInt64]? = nil, aiOcrInputIndexList: [UInt64]? = nil, checkStreamBroken: UInt64? = nil, checkStreamLowFrameRate: UInt64? = nil, allowMonitorReport: UInt64? = nil, aiFormatDiagnose: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveStreamMonitorResponse {
        try await self.modifyLiveStreamMonitor(.init(monitorId: monitorId, monitorName: monitorName, outputInfo: outputInfo, inputList: inputList, notifyPolicy: notifyPolicy, asrLanguage: asrLanguage, ocrLanguage: ocrLanguage, aiAsrInputIndexList: aiAsrInputIndexList, aiOcrInputIndexList: aiOcrInputIndexList, checkStreamBroken: checkStreamBroken, checkStreamLowFrameRate: checkStreamLowFrameRate, allowMonitorReport: allowMonitorReport, aiFormatDiagnose: aiFormatDiagnose), region: region, logger: logger, on: eventLoop)
    }
}
