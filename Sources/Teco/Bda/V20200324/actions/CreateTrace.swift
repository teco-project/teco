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

extension Bda {
    /// CreateTrace请求参数结构体
    public struct CreateTraceRequest: TCRequest {
        /// 人员ID。
        public let personId: String

        /// 人体动作轨迹信息。
        public let trace: Trace

        public init(personId: String, trace: Trace) {
            self.personId = personId
            self.trace = trace
        }

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case trace = "Trace"
        }
    }

    /// CreateTrace返回参数结构体
    public struct CreateTraceResponse: TCResponse {
        /// 人员动作轨迹唯一标识。
        public let traceId: String

        /// 人体识别所用的算法模型版本。
        public let bodyModelVersion: String

        /// 输入的人体动作轨迹图片中的合法性校验结果。
        /// 只有为0时结果才有意义。
        /// -1001: 输入图片不合法。-1002: 输入图片不能构成轨迹。
        public let inputRetCode: Int64

        /// 输入的人体动作轨迹图片中的合法性校验结果详情。
        /// -1101:图片无效，-1102:url不合法。-1103:图片过大。-1104:图片下载失败。-1105:图片解码失败。-1109:图片分辨率过高。-2023:动作轨迹中有非同人图片。-2024: 动作轨迹提取失败。-2025: 人体检测失败。
        public let inputRetCodeDetails: [Int64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case traceId = "TraceId"
            case bodyModelVersion = "BodyModelVersion"
            case inputRetCode = "InputRetCode"
            case inputRetCodeDetails = "InputRetCodeDetails"
            case requestId = "RequestId"
        }
    }

    /// 增加人员动作轨迹
    ///
    /// 将一个人体动作轨迹添加到一个人员中。一个人员最多允许包含 5 个人体动作轨迹。同一人的人体动作轨迹越多，搜索识别效果越好。
    ///
    /// >请注意：
    /// - 我们希望您的输入为 严格符合动作轨迹图片 要求的图片。如果您输入的图片不符合动作轨迹图片要求，会对最终效果产生较大负面影响。请您尽量保证一个Trace中的图片人体清晰、无遮挡、连贯。
    /// - 一个人体动作轨迹（Trace）可以包含1-5张人体图片。提供越多质量高的人体图片有助于提升最终识别结果。
    /// - 无论您在单个Trace中提供了多少张人体图片，我们都将生成一个对应的动作轨迹（Trace）信息。即，Trace仅和本次输入的图片序列相关，和图片的个数无关。
    /// - 输入的图片组中，若有部分图片输入不合法（如图片大小过大、分辨率过大、无法解码等），我们将舍弃这部分图片，确保合法图片被正确搜索。即，我们将尽可能保证请求成功，去除不合法的输入；
    /// - 构成人体动作轨迹单张图片大小限制为2M，分辨率限制为1920*1080。
    @inlinable
    public func createTrace(_ input: CreateTraceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTraceResponse> {
        self.client.execute(action: "CreateTrace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增加人员动作轨迹
    ///
    /// 将一个人体动作轨迹添加到一个人员中。一个人员最多允许包含 5 个人体动作轨迹。同一人的人体动作轨迹越多，搜索识别效果越好。
    ///
    /// >请注意：
    /// - 我们希望您的输入为 严格符合动作轨迹图片 要求的图片。如果您输入的图片不符合动作轨迹图片要求，会对最终效果产生较大负面影响。请您尽量保证一个Trace中的图片人体清晰、无遮挡、连贯。
    /// - 一个人体动作轨迹（Trace）可以包含1-5张人体图片。提供越多质量高的人体图片有助于提升最终识别结果。
    /// - 无论您在单个Trace中提供了多少张人体图片，我们都将生成一个对应的动作轨迹（Trace）信息。即，Trace仅和本次输入的图片序列相关，和图片的个数无关。
    /// - 输入的图片组中，若有部分图片输入不合法（如图片大小过大、分辨率过大、无法解码等），我们将舍弃这部分图片，确保合法图片被正确搜索。即，我们将尽可能保证请求成功，去除不合法的输入；
    /// - 构成人体动作轨迹单张图片大小限制为2M，分辨率限制为1920*1080。
    @inlinable
    public func createTrace(_ input: CreateTraceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTraceResponse {
        try await self.client.execute(action: "CreateTrace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 增加人员动作轨迹
    ///
    /// 将一个人体动作轨迹添加到一个人员中。一个人员最多允许包含 5 个人体动作轨迹。同一人的人体动作轨迹越多，搜索识别效果越好。
    ///
    /// >请注意：
    /// - 我们希望您的输入为 严格符合动作轨迹图片 要求的图片。如果您输入的图片不符合动作轨迹图片要求，会对最终效果产生较大负面影响。请您尽量保证一个Trace中的图片人体清晰、无遮挡、连贯。
    /// - 一个人体动作轨迹（Trace）可以包含1-5张人体图片。提供越多质量高的人体图片有助于提升最终识别结果。
    /// - 无论您在单个Trace中提供了多少张人体图片，我们都将生成一个对应的动作轨迹（Trace）信息。即，Trace仅和本次输入的图片序列相关，和图片的个数无关。
    /// - 输入的图片组中，若有部分图片输入不合法（如图片大小过大、分辨率过大、无法解码等），我们将舍弃这部分图片，确保合法图片被正确搜索。即，我们将尽可能保证请求成功，去除不合法的输入；
    /// - 构成人体动作轨迹单张图片大小限制为2M，分辨率限制为1920*1080。
    @inlinable
    public func createTrace(personId: String, trace: Trace, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTraceResponse> {
        self.createTrace(.init(personId: personId, trace: trace), region: region, logger: logger, on: eventLoop)
    }

    /// 增加人员动作轨迹
    ///
    /// 将一个人体动作轨迹添加到一个人员中。一个人员最多允许包含 5 个人体动作轨迹。同一人的人体动作轨迹越多，搜索识别效果越好。
    ///
    /// >请注意：
    /// - 我们希望您的输入为 严格符合动作轨迹图片 要求的图片。如果您输入的图片不符合动作轨迹图片要求，会对最终效果产生较大负面影响。请您尽量保证一个Trace中的图片人体清晰、无遮挡、连贯。
    /// - 一个人体动作轨迹（Trace）可以包含1-5张人体图片。提供越多质量高的人体图片有助于提升最终识别结果。
    /// - 无论您在单个Trace中提供了多少张人体图片，我们都将生成一个对应的动作轨迹（Trace）信息。即，Trace仅和本次输入的图片序列相关，和图片的个数无关。
    /// - 输入的图片组中，若有部分图片输入不合法（如图片大小过大、分辨率过大、无法解码等），我们将舍弃这部分图片，确保合法图片被正确搜索。即，我们将尽可能保证请求成功，去除不合法的输入；
    /// - 构成人体动作轨迹单张图片大小限制为2M，分辨率限制为1920*1080。
    @inlinable
    public func createTrace(personId: String, trace: Trace, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTraceResponse {
        try await self.createTrace(.init(personId: personId, trace: trace), region: region, logger: logger, on: eventLoop)
    }
}
