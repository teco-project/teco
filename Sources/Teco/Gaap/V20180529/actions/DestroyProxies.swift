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

extension Gaap {
    /// DestroyProxies请求参数结构体
    public struct DestroyProxiesRequest: TCRequestModel {
        /// 强制删除标识。
        /// 1，强制删除该通道列表，无论是否已经绑定了源站；
        /// 0，如果已绑定了源站，则无法删除。
        /// 删除多通道时，如果该标识为0，只有所有的通道都没有绑定源站，才允许删除。
        public let force: Int64

        /// （旧参数，请切换到ProxyIds）通道实例ID列表。
        public let instanceIds: [String]?

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        /// 更多详细信息请参阅：如何保证幂等性。
        public let clientToken: String?

        /// （新参数）通道实例ID列表。
        public let proxyIds: [String]?

        public init(force: Int64, instanceIds: [String]? = nil, clientToken: String? = nil, proxyIds: [String]? = nil) {
            self.force = force
            self.instanceIds = instanceIds
            self.clientToken = clientToken
            self.proxyIds = proxyIds
        }

        enum CodingKeys: String, CodingKey {
            case force = "Force"
            case instanceIds = "InstanceIds"
            case clientToken = "ClientToken"
            case proxyIds = "ProxyIds"
        }
    }

    /// DestroyProxies返回参数结构体
    public struct DestroyProxiesResponse: TCResponseModel {
        /// 处于不可销毁状态下的通道实例ID列表。
        public let invalidStatusInstanceSet: [String]

        /// 销毁操作失败的通道实例ID列表。
        public let operationFailedInstanceSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case invalidStatusInstanceSet = "InvalidStatusInstanceSet"
            case operationFailedInstanceSet = "OperationFailedInstanceSet"
            case requestId = "RequestId"
        }
    }

    /// 销毁通道
    ///
    /// 本接口（DestroyProxies）用于销毁。通道销毁后，不再产生任何费用。
    @inlinable
    public func destroyProxies(_ input: DestroyProxiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyProxiesResponse> {
        self.client.execute(action: "DestroyProxies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁通道
    ///
    /// 本接口（DestroyProxies）用于销毁。通道销毁后，不再产生任何费用。
    @inlinable
    public func destroyProxies(_ input: DestroyProxiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyProxiesResponse {
        try await self.client.execute(action: "DestroyProxies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁通道
    ///
    /// 本接口（DestroyProxies）用于销毁。通道销毁后，不再产生任何费用。
    @inlinable
    public func destroyProxies(force: Int64, instanceIds: [String]? = nil, clientToken: String? = nil, proxyIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyProxiesResponse> {
        self.destroyProxies(DestroyProxiesRequest(force: force, instanceIds: instanceIds, clientToken: clientToken, proxyIds: proxyIds), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁通道
    ///
    /// 本接口（DestroyProxies）用于销毁。通道销毁后，不再产生任何费用。
    @inlinable
    public func destroyProxies(force: Int64, instanceIds: [String]? = nil, clientToken: String? = nil, proxyIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyProxiesResponse {
        try await self.destroyProxies(DestroyProxiesRequest(force: force, instanceIds: instanceIds, clientToken: clientToken, proxyIds: proxyIds), region: region, logger: logger, on: eventLoop)
    }
}
