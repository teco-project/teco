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

extension Lighthouse {
    /// DisassociateInstancesKeyPairs请求参数结构体
    public struct DisassociateInstancesKeyPairsRequest: TCRequestModel {
        /// 密钥对 ID 列表。每次请求批量密钥对的上限为 100。
        public let keyIds: [String]

        /// 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        public let instanceIds: [String]

        public init(keyIds: [String], instanceIds: [String]) {
            self.keyIds = keyIds
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case keyIds = "KeyIds"
            case instanceIds = "InstanceIds"
        }
    }

    /// DisassociateInstancesKeyPairs返回参数结构体
    public struct DisassociateInstancesKeyPairsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑密钥对
    ///
    /// 本接口（DisassociateInstancesKeyPairs）用于解除实例与指定密钥对的绑定关系。
    ///
    /// * 只支持 [RUNNING, STOPPED] 状态的 LINUX_UNIX 操作系统的实例。处于 RUNNING 状态的实例会强制关机，然后解绑。
    /// * 解绑密钥后，实例可以通过原来设置的密码登录。
    /// * 如果原来没有设置密码，解绑后将无法使用 SSH 登录。可以调用 ResetInstancesPassword 接口来设置登录密码。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func disassociateInstancesKeyPairs(_ input: DisassociateInstancesKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateInstancesKeyPairsResponse> {
        self.client.execute(action: "DisassociateInstancesKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑密钥对
    ///
    /// 本接口（DisassociateInstancesKeyPairs）用于解除实例与指定密钥对的绑定关系。
    ///
    /// * 只支持 [RUNNING, STOPPED] 状态的 LINUX_UNIX 操作系统的实例。处于 RUNNING 状态的实例会强制关机，然后解绑。
    /// * 解绑密钥后，实例可以通过原来设置的密码登录。
    /// * 如果原来没有设置密码，解绑后将无法使用 SSH 登录。可以调用 ResetInstancesPassword 接口来设置登录密码。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func disassociateInstancesKeyPairs(_ input: DisassociateInstancesKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateInstancesKeyPairsResponse {
        try await self.client.execute(action: "DisassociateInstancesKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑密钥对
    ///
    /// 本接口（DisassociateInstancesKeyPairs）用于解除实例与指定密钥对的绑定关系。
    ///
    /// * 只支持 [RUNNING, STOPPED] 状态的 LINUX_UNIX 操作系统的实例。处于 RUNNING 状态的实例会强制关机，然后解绑。
    /// * 解绑密钥后，实例可以通过原来设置的密码登录。
    /// * 如果原来没有设置密码，解绑后将无法使用 SSH 登录。可以调用 ResetInstancesPassword 接口来设置登录密码。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func disassociateInstancesKeyPairs(keyIds: [String], instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateInstancesKeyPairsResponse> {
        self.disassociateInstancesKeyPairs(.init(keyIds: keyIds, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑密钥对
    ///
    /// 本接口（DisassociateInstancesKeyPairs）用于解除实例与指定密钥对的绑定关系。
    ///
    /// * 只支持 [RUNNING, STOPPED] 状态的 LINUX_UNIX 操作系统的实例。处于 RUNNING 状态的实例会强制关机，然后解绑。
    /// * 解绑密钥后，实例可以通过原来设置的密码登录。
    /// * 如果原来没有设置密码，解绑后将无法使用 SSH 登录。可以调用 ResetInstancesPassword 接口来设置登录密码。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func disassociateInstancesKeyPairs(keyIds: [String], instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateInstancesKeyPairsResponse {
        try await self.disassociateInstancesKeyPairs(.init(keyIds: keyIds, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
