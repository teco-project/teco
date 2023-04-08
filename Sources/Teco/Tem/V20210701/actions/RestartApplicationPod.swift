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

extension Tem {
    /// RestartApplicationPod请求参数结构体
    public struct RestartApplicationPodRequest: TCRequestModel {
        /// 环境id
        public let environmentId: String

        /// 应用id
        public let applicationId: String

        /// 名字
        public let podName: String

        /// 单页条数
        public let limit: Int64?

        /// 分页下标
        public let offset: Int64?

        /// pod状态
        public let status: String?

        /// 来源渠道
        public let sourceChannel: Int64?

        public init(environmentId: String, applicationId: String, podName: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, sourceChannel: Int64? = nil) {
            self.environmentId = environmentId
            self.applicationId = applicationId
            self.podName = podName
            self.limit = limit
            self.offset = offset
            self.status = status
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case applicationId = "ApplicationId"
            case podName = "PodName"
            case limit = "Limit"
            case offset = "Offset"
            case status = "Status"
            case sourceChannel = "SourceChannel"
        }
    }

    /// RestartApplicationPod返回参数结构体
    public struct RestartApplicationPodResponse: TCResponseModel {
        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 重启应用实例
    @inlinable
    public func restartApplicationPod(_ input: RestartApplicationPodRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartApplicationPodResponse> {
        self.client.execute(action: "RestartApplicationPod", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重启应用实例
    @inlinable
    public func restartApplicationPod(_ input: RestartApplicationPodRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartApplicationPodResponse {
        try await self.client.execute(action: "RestartApplicationPod", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重启应用实例
    @inlinable
    public func restartApplicationPod(environmentId: String, applicationId: String, podName: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartApplicationPodResponse> {
        self.restartApplicationPod(.init(environmentId: environmentId, applicationId: applicationId, podName: podName, limit: limit, offset: offset, status: status, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 重启应用实例
    @inlinable
    public func restartApplicationPod(environmentId: String, applicationId: String, podName: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartApplicationPodResponse {
        try await self.restartApplicationPod(.init(environmentId: environmentId, applicationId: applicationId, podName: podName, limit: limit, offset: offset, status: status, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
