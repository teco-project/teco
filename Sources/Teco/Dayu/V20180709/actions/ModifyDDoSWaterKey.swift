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

extension Dayu {
    /// ModifyDDoSWaterKey请求参数结构体
    public struct ModifyDDoSWaterKeyRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 策略ID
        public let policyId: String

        /// 密钥操作，取值：[add（添加），delete（删除），open（开启），close（关闭），get（获取密钥）]
        public let method: String

        /// 密钥ID，当添加密钥操作时可以不填或填0，其他操作时必须填写；
        public let keyId: UInt64?

        public init(business: String, policyId: String, method: String, keyId: UInt64? = nil) {
            self.business = business
            self.policyId = policyId
            self.method = method
            self.keyId = keyId
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case policyId = "PolicyId"
            case method = "Method"
            case keyId = "KeyId"
        }
    }

    /// ModifyDDoSWaterKey返回参数结构体
    public struct ModifyDDoSWaterKeyResponse: TCResponseModel {
        /// 水印密钥列表
        public let keyList: [WaterPrintKey]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyList = "KeyList"
            case requestId = "RequestId"
        }
    }

    /// 修改水印密钥
    ///
    /// 支持水印密钥的添加，删除，开启，关闭
    @inlinable
    public func modifyDDoSWaterKey(_ input: ModifyDDoSWaterKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSWaterKeyResponse> {
        self.client.execute(action: "ModifyDDoSWaterKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改水印密钥
    ///
    /// 支持水印密钥的添加，删除，开启，关闭
    @inlinable
    public func modifyDDoSWaterKey(_ input: ModifyDDoSWaterKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSWaterKeyResponse {
        try await self.client.execute(action: "ModifyDDoSWaterKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改水印密钥
    ///
    /// 支持水印密钥的添加，删除，开启，关闭
    @inlinable
    public func modifyDDoSWaterKey(business: String, policyId: String, method: String, keyId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSWaterKeyResponse> {
        self.modifyDDoSWaterKey(.init(business: business, policyId: policyId, method: method, keyId: keyId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改水印密钥
    ///
    /// 支持水印密钥的添加，删除，开启，关闭
    @inlinable
    public func modifyDDoSWaterKey(business: String, policyId: String, method: String, keyId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSWaterKeyResponse {
        try await self.modifyDDoSWaterKey(.init(business: business, policyId: policyId, method: method, keyId: keyId), region: region, logger: logger, on: eventLoop)
    }
}
