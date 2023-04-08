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
    /// DeleteIngress请求参数结构体
    public struct DeleteIngressRequest: TCRequestModel {
        /// tem NamespaceId
        public let namespaceId: String

        /// eks namespace 名
        public let eksNamespace: String

        /// ingress 规则名
        public let name: String

        /// 来源渠道
        public let sourceChannel: Int64?

        public init(namespaceId: String, eksNamespace: String, name: String, sourceChannel: Int64? = nil) {
            self.namespaceId = namespaceId
            self.eksNamespace = eksNamespace
            self.name = name
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case eksNamespace = "EksNamespace"
            case name = "Name"
            case sourceChannel = "SourceChannel"
        }
    }

    /// DeleteIngress返回参数结构体
    public struct DeleteIngressResponse: TCResponseModel {
        /// 是否删除成功
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除 Ingress 规则
    @inlinable
    public func deleteIngress(_ input: DeleteIngressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIngressResponse> {
        self.client.execute(action: "DeleteIngress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除 Ingress 规则
    @inlinable
    public func deleteIngress(_ input: DeleteIngressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIngressResponse {
        try await self.client.execute(action: "DeleteIngress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除 Ingress 规则
    @inlinable
    public func deleteIngress(namespaceId: String, eksNamespace: String, name: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIngressResponse> {
        self.deleteIngress(.init(namespaceId: namespaceId, eksNamespace: eksNamespace, name: name, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 删除 Ingress 规则
    @inlinable
    public func deleteIngress(namespaceId: String, eksNamespace: String, name: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIngressResponse {
        try await self.deleteIngress(.init(namespaceId: namespaceId, eksNamespace: eksNamespace, name: name, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
