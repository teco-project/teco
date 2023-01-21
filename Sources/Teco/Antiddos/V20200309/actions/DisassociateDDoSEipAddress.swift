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

extension Antiddos {
    /// DisassociateDDoSEipAddress请求参数结构体
    public struct DisassociateDDoSEipAddressRequest: TCRequestModel {
        /// 资源实例ID，实例ID形如：bgpip-0000011x。只能填写高防IP实例。
        public let instanceId: String

        /// 资源实例ID对应的高防弹性公网IP。
        public let eip: String

        public init(instanceId: String, eip: String) {
            self.instanceId = instanceId
            self.eip = eip
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case eip = "Eip"
        }
    }

    /// DisassociateDDoSEipAddress返回参数结构体
    public struct DisassociateDDoSEipAddressResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑高防弹性公网IP
    ///
    /// 本接口 (DisassociateDDoSEipAddress) 用于解绑高防弹性公网IP。
    @inlinable @discardableResult
    public func disassociateDDoSEipAddress(_ input: DisassociateDDoSEipAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateDDoSEipAddressResponse> {
        self.client.execute(action: "DisassociateDDoSEipAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑高防弹性公网IP
    ///
    /// 本接口 (DisassociateDDoSEipAddress) 用于解绑高防弹性公网IP。
    @inlinable @discardableResult
    public func disassociateDDoSEipAddress(_ input: DisassociateDDoSEipAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateDDoSEipAddressResponse {
        try await self.client.execute(action: "DisassociateDDoSEipAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑高防弹性公网IP
    ///
    /// 本接口 (DisassociateDDoSEipAddress) 用于解绑高防弹性公网IP。
    @inlinable @discardableResult
    public func disassociateDDoSEipAddress(instanceId: String, eip: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateDDoSEipAddressResponse> {
        self.disassociateDDoSEipAddress(DisassociateDDoSEipAddressRequest(instanceId: instanceId, eip: eip), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑高防弹性公网IP
    ///
    /// 本接口 (DisassociateDDoSEipAddress) 用于解绑高防弹性公网IP。
    @inlinable @discardableResult
    public func disassociateDDoSEipAddress(instanceId: String, eip: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateDDoSEipAddressResponse {
        try await self.disassociateDDoSEipAddress(DisassociateDDoSEipAddressRequest(instanceId: instanceId, eip: eip), region: region, logger: logger, on: eventLoop)
    }
}
