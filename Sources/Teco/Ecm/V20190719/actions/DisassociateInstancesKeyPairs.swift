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

extension Ecm {
    /// DisassociateInstancesKeyPairs请求参数结构体
    public struct DisassociateInstancesKeyPairsRequest: TCRequest {
        /// 可以通过以下方式获取可用的实例ID：
        /// 通过登录控制台查询实例ID。
        /// 通过调用接口 DescribeInstances ，取返回信息中的 InstanceId 获取实例ID。
        public let instanceIds: [String]

        /// 密钥对ID列表，每次请求批量密钥对的上限为100。密钥对ID形如：skey-11112222。
        ///
        /// 可以通过以下方式获取可用的密钥ID：
        /// 通过登录控制台查询密钥ID。
        /// 通过调用接口 DescribeKeyPairs ，取返回信息中的 KeyId 获取密钥对ID。
        public let keyIds: [String]

        /// 是否对运行中的实例选择强制关机。建议对运行中的实例先手动关机，然后再解绑密钥。取值范围：
        /// TRUE：表示在正常关机失败后进行强制关机。
        /// FALSE：表示在正常关机失败后不进行强制关机。
        ///
        /// 默认取值：FALSE。
        public let forceStop: Bool?

        public init(instanceIds: [String], keyIds: [String], forceStop: Bool? = nil) {
            self.instanceIds = instanceIds
            self.keyIds = keyIds
            self.forceStop = forceStop
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case keyIds = "KeyIds"
            case forceStop = "ForceStop"
        }
    }

    /// DisassociateInstancesKeyPairs返回参数结构体
    public struct DisassociateInstancesKeyPairsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑密钥对
    ///
    /// 用于解除实例的密钥绑定关系。
    @inlinable @discardableResult
    public func disassociateInstancesKeyPairs(_ input: DisassociateInstancesKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateInstancesKeyPairsResponse> {
        self.client.execute(action: "DisassociateInstancesKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑密钥对
    ///
    /// 用于解除实例的密钥绑定关系。
    @inlinable @discardableResult
    public func disassociateInstancesKeyPairs(_ input: DisassociateInstancesKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateInstancesKeyPairsResponse {
        try await self.client.execute(action: "DisassociateInstancesKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑密钥对
    ///
    /// 用于解除实例的密钥绑定关系。
    @inlinable @discardableResult
    public func disassociateInstancesKeyPairs(instanceIds: [String], keyIds: [String], forceStop: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateInstancesKeyPairsResponse> {
        self.disassociateInstancesKeyPairs(.init(instanceIds: instanceIds, keyIds: keyIds, forceStop: forceStop), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑密钥对
    ///
    /// 用于解除实例的密钥绑定关系。
    @inlinable @discardableResult
    public func disassociateInstancesKeyPairs(instanceIds: [String], keyIds: [String], forceStop: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateInstancesKeyPairsResponse {
        try await self.disassociateInstancesKeyPairs(.init(instanceIds: instanceIds, keyIds: keyIds, forceStop: forceStop), region: region, logger: logger, on: eventLoop)
    }
}
