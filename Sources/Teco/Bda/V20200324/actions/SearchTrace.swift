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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Bda {
    /// SearchTrace请求参数结构体
    public struct SearchTraceRequest: TCRequestModel {
        /// 希望搜索的人体库ID。
        public let groupId: String

        /// 人体动作轨迹信息。
        public let trace: Trace

        /// 单张被识别的人体动作轨迹返回的最相似人员数量。
        /// 默认值为5，最大值为100。
        ///  例，设MaxPersonNum为8，则返回Top8相似的人员信息。 值越大，需要处理的时间越长。建议不要超过10。
        public let maxPersonNum: UInt64?

        /// 出参Score中，只有超过TraceMatchThreshold值的结果才会返回。
        /// 默认为0。范围[0, 100.0]。
        public let traceMatchThreshold: Float?

        public init(groupId: String, trace: Trace, maxPersonNum: UInt64? = nil, traceMatchThreshold: Float? = nil) {
            self.groupId = groupId
            self.trace = trace
            self.maxPersonNum = maxPersonNum
            self.traceMatchThreshold = traceMatchThreshold
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case trace = "Trace"
            case maxPersonNum = "MaxPersonNum"
            case traceMatchThreshold = "TraceMatchThreshold"
        }
    }

    /// SearchTrace返回参数结构体
    public struct SearchTraceResponse: TCResponseModel {
        /// 识别出的最相似候选人。
        public let candidates: [Candidate]

        /// 输入的人体动作轨迹图片中的合法性校验结果。
        /// 只有为0时结果才有意义。
        /// -1001: 输入图片不合法。-1002: 输入图片不能构成动作轨迹。
        public let inputRetCode: Int64

        /// 输入的人体动作轨迹图片中的合法性校验结果详情。
        /// -1101:图片无效，-1102:url不合法。-1103:图片过大。-1104:图片下载失败。-1105:图片解码失败。-1109:图片分辨率过高。-2023:动作轨迹中有非同人图片。-2024: 动作轨迹提取失败。-2025: 人体检测失败。
        public let inputRetCodeDetails: [Int64]

        /// 人体识别所用的算法模型版本。
        public let bodyModelVersion: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case candidates = "Candidates"
            case inputRetCode = "InputRetCode"
            case inputRetCodeDetails = "InputRetCodeDetails"
            case bodyModelVersion = "BodyModelVersion"
            case requestId = "RequestId"
        }
    }

    /// 人体搜索
    ///
    /// 本接口用于对一组待识别的人体动作轨迹（Trace）图片，在人体库中识别出最相似的 TopK 人体，按照相似度从大到小排列。
    ///
    /// 人体动作轨迹（Trace）图片要求：图片中当且仅包含一个人体。人体完整、无遮挡。
    ///
    /// > 请注意：
    /// - 我们希望您的输入为严格符合动作轨迹图片要求的图片。如果您输入的图片不符合动作轨迹图片要求，会对最终效果产生较大负面影响；
    /// - 人体动作轨迹，是一个包含1-5张图片的图片序列。您可以输入1张图片作为动作轨迹，也可以输入多张。单个动作轨迹中包含越多符合质量的图片，搜索效果越好。
    /// - 构成人体动作轨迹单张图片大小不得超过2M，分辨率不得超过1920*1080。
    @inlinable
    public func searchTrace(_ input: SearchTraceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchTraceResponse> {
        self.client.execute(action: "SearchTrace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 人体搜索
    ///
    /// 本接口用于对一组待识别的人体动作轨迹（Trace）图片，在人体库中识别出最相似的 TopK 人体，按照相似度从大到小排列。
    ///
    /// 人体动作轨迹（Trace）图片要求：图片中当且仅包含一个人体。人体完整、无遮挡。
    ///
    /// > 请注意：
    /// - 我们希望您的输入为严格符合动作轨迹图片要求的图片。如果您输入的图片不符合动作轨迹图片要求，会对最终效果产生较大负面影响；
    /// - 人体动作轨迹，是一个包含1-5张图片的图片序列。您可以输入1张图片作为动作轨迹，也可以输入多张。单个动作轨迹中包含越多符合质量的图片，搜索效果越好。
    /// - 构成人体动作轨迹单张图片大小不得超过2M，分辨率不得超过1920*1080。
    @inlinable
    public func searchTrace(_ input: SearchTraceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchTraceResponse {
        try await self.client.execute(action: "SearchTrace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 人体搜索
    ///
    /// 本接口用于对一组待识别的人体动作轨迹（Trace）图片，在人体库中识别出最相似的 TopK 人体，按照相似度从大到小排列。
    ///
    /// 人体动作轨迹（Trace）图片要求：图片中当且仅包含一个人体。人体完整、无遮挡。
    ///
    /// > 请注意：
    /// - 我们希望您的输入为严格符合动作轨迹图片要求的图片。如果您输入的图片不符合动作轨迹图片要求，会对最终效果产生较大负面影响；
    /// - 人体动作轨迹，是一个包含1-5张图片的图片序列。您可以输入1张图片作为动作轨迹，也可以输入多张。单个动作轨迹中包含越多符合质量的图片，搜索效果越好。
    /// - 构成人体动作轨迹单张图片大小不得超过2M，分辨率不得超过1920*1080。
    @inlinable
    public func searchTrace(groupId: String, trace: Trace, maxPersonNum: UInt64? = nil, traceMatchThreshold: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchTraceResponse> {
        self.searchTrace(.init(groupId: groupId, trace: trace, maxPersonNum: maxPersonNum, traceMatchThreshold: traceMatchThreshold), region: region, logger: logger, on: eventLoop)
    }

    /// 人体搜索
    ///
    /// 本接口用于对一组待识别的人体动作轨迹（Trace）图片，在人体库中识别出最相似的 TopK 人体，按照相似度从大到小排列。
    ///
    /// 人体动作轨迹（Trace）图片要求：图片中当且仅包含一个人体。人体完整、无遮挡。
    ///
    /// > 请注意：
    /// - 我们希望您的输入为严格符合动作轨迹图片要求的图片。如果您输入的图片不符合动作轨迹图片要求，会对最终效果产生较大负面影响；
    /// - 人体动作轨迹，是一个包含1-5张图片的图片序列。您可以输入1张图片作为动作轨迹，也可以输入多张。单个动作轨迹中包含越多符合质量的图片，搜索效果越好。
    /// - 构成人体动作轨迹单张图片大小不得超过2M，分辨率不得超过1920*1080。
    @inlinable
    public func searchTrace(groupId: String, trace: Trace, maxPersonNum: UInt64? = nil, traceMatchThreshold: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchTraceResponse {
        try await self.searchTrace(.init(groupId: groupId, trace: trace, maxPersonNum: maxPersonNum, traceMatchThreshold: traceMatchThreshold), region: region, logger: logger, on: eventLoop)
    }
}
