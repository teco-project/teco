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

import TecoCore

extension Tem {
    /// RestartServiceRunPod请求参数结构体
    public struct RestartServiceRunPodRequest: TCRequestModel {
        /// 环境id
        public let namespaceId: String

        /// 服务名id
        public let serviceId: String

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

        public init(namespaceId: String, serviceId: String, podName: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, sourceChannel: Int64? = nil) {
            self.namespaceId = namespaceId
            self.serviceId = serviceId
            self.podName = podName
            self.limit = limit
            self.offset = offset
            self.status = status
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case serviceId = "ServiceId"
            case podName = "PodName"
            case limit = "Limit"
            case offset = "Offset"
            case status = "Status"
            case sourceChannel = "SourceChannel"
        }
    }

    /// RestartServiceRunPod返回参数结构体
    public struct RestartServiceRunPodResponse: TCResponseModel {
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

    /// 重启实例
    @inlinable
    public func restartServiceRunPod(_ input: RestartServiceRunPodRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartServiceRunPodResponse> {
        self.client.execute(action: "RestartServiceRunPod", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重启实例
    @inlinable
    public func restartServiceRunPod(_ input: RestartServiceRunPodRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartServiceRunPodResponse {
        try await self.client.execute(action: "RestartServiceRunPod", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重启实例
    @inlinable
    public func restartServiceRunPod(namespaceId: String, serviceId: String, podName: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartServiceRunPodResponse> {
        self.restartServiceRunPod(.init(namespaceId: namespaceId, serviceId: serviceId, podName: podName, limit: limit, offset: offset, status: status, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 重启实例
    @inlinable
    public func restartServiceRunPod(namespaceId: String, serviceId: String, podName: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartServiceRunPodResponse {
        try await self.restartServiceRunPod(.init(namespaceId: namespaceId, serviceId: serviceId, podName: podName, limit: limit, offset: offset, status: status, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
