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

extension Cvm {
    /// AssociateInstancesKeyPairs请求参数结构体
    public struct AssociateInstancesKeyPairsRequest: TCRequestModel {
        /// 一个或多个待操作的实例ID，每次请求批量实例的上限为100。<br>可以通过以下方式获取可用的实例ID：<br><li>通过登录[控制台](https://console.cloud.tencent.com/cvm/index)查询实例ID。<br><li>通过调用接口 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728) ，取返回信息中的`InstanceId`获取实例ID。
        public let instanceIds: [String]

        /// 一个或多个待操作的密钥对ID，每次请求批量密钥对的上限为100。密钥对ID形如：`skey-3glfot13`。<br>可以通过以下方式获取可用的密钥ID：<br><li>通过登录[控制台](https://console.cloud.tencent.com/cvm/sshkey)查询密钥ID。<br><li>通过调用接口 [DescribeKeyPairs](https://cloud.tencent.com/document/api/213/15699) ，取返回信息中的`KeyId`获取密钥对ID。
        public let keyIds: [String]

        /// 是否对运行中的实例选择强制关机。建议对运行中的实例先手动关机，然后再绑定密钥。取值范围：<br><li>TRUE：表示在正常关机失败后进行强制关机。<br><li>FALSE：表示在正常关机失败后不进行强制关机。<br>默认取值：FALSE。
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

    /// AssociateInstancesKeyPairs返回参数结构体
    public struct AssociateInstancesKeyPairsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定密钥对
    ///
    /// 本接口 (AssociateInstancesKeyPairs) 用于将密钥绑定到实例上。
    ///
    /// * 将密钥的公钥写入到实例的`SSH`配置当中，用户就可以通过该密钥的私钥来登录实例。
    /// * 如果实例原来绑定过密钥，那么原来的密钥将失效。
    /// * 如果实例原来是通过密码登录，绑定密钥后无法使用密码登录。
    /// * 支持批量操作。每次请求批量实例的上限为100。如果批量实例存在不允许操作的实例，操作会以特定错误码返回。
    @inlinable @discardableResult
    public func associateInstancesKeyPairs(_ input: AssociateInstancesKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateInstancesKeyPairsResponse> {
        self.client.execute(action: "AssociateInstancesKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定密钥对
    ///
    /// 本接口 (AssociateInstancesKeyPairs) 用于将密钥绑定到实例上。
    ///
    /// * 将密钥的公钥写入到实例的`SSH`配置当中，用户就可以通过该密钥的私钥来登录实例。
    /// * 如果实例原来绑定过密钥，那么原来的密钥将失效。
    /// * 如果实例原来是通过密码登录，绑定密钥后无法使用密码登录。
    /// * 支持批量操作。每次请求批量实例的上限为100。如果批量实例存在不允许操作的实例，操作会以特定错误码返回。
    @inlinable @discardableResult
    public func associateInstancesKeyPairs(_ input: AssociateInstancesKeyPairsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateInstancesKeyPairsResponse {
        try await self.client.execute(action: "AssociateInstancesKeyPairs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定密钥对
    ///
    /// 本接口 (AssociateInstancesKeyPairs) 用于将密钥绑定到实例上。
    ///
    /// * 将密钥的公钥写入到实例的`SSH`配置当中，用户就可以通过该密钥的私钥来登录实例。
    /// * 如果实例原来绑定过密钥，那么原来的密钥将失效。
    /// * 如果实例原来是通过密码登录，绑定密钥后无法使用密码登录。
    /// * 支持批量操作。每次请求批量实例的上限为100。如果批量实例存在不允许操作的实例，操作会以特定错误码返回。
    @inlinable @discardableResult
    public func associateInstancesKeyPairs(instanceIds: [String], keyIds: [String], forceStop: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateInstancesKeyPairsResponse> {
        self.associateInstancesKeyPairs(.init(instanceIds: instanceIds, keyIds: keyIds, forceStop: forceStop), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定密钥对
    ///
    /// 本接口 (AssociateInstancesKeyPairs) 用于将密钥绑定到实例上。
    ///
    /// * 将密钥的公钥写入到实例的`SSH`配置当中，用户就可以通过该密钥的私钥来登录实例。
    /// * 如果实例原来绑定过密钥，那么原来的密钥将失效。
    /// * 如果实例原来是通过密码登录，绑定密钥后无法使用密码登录。
    /// * 支持批量操作。每次请求批量实例的上限为100。如果批量实例存在不允许操作的实例，操作会以特定错误码返回。
    @inlinable @discardableResult
    public func associateInstancesKeyPairs(instanceIds: [String], keyIds: [String], forceStop: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateInstancesKeyPairsResponse {
        try await self.associateInstancesKeyPairs(.init(instanceIds: instanceIds, keyIds: keyIds, forceStop: forceStop), region: region, logger: logger, on: eventLoop)
    }
}
