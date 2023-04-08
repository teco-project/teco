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
    /// DeleteWaterPrintKey请求参数结构体
    public struct DeleteWaterPrintKeyRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String

        /// 水印密钥ID
        public let keyId: String

        public init(instanceId: String, keyId: String) {
            self.instanceId = instanceId
            self.keyId = keyId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case keyId = "KeyId"
        }
    }

    /// DeleteWaterPrintKey返回参数结构体
    public struct DeleteWaterPrintKeyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除DDoS防护的水印防护密钥
    @inlinable @discardableResult
    public func deleteWaterPrintKey(_ input: DeleteWaterPrintKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWaterPrintKeyResponse> {
        self.client.execute(action: "DeleteWaterPrintKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除DDoS防护的水印防护密钥
    @inlinable @discardableResult
    public func deleteWaterPrintKey(_ input: DeleteWaterPrintKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWaterPrintKeyResponse {
        try await self.client.execute(action: "DeleteWaterPrintKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除DDoS防护的水印防护密钥
    @inlinable @discardableResult
    public func deleteWaterPrintKey(instanceId: String, keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWaterPrintKeyResponse> {
        self.deleteWaterPrintKey(.init(instanceId: instanceId, keyId: keyId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除DDoS防护的水印防护密钥
    @inlinable @discardableResult
    public func deleteWaterPrintKey(instanceId: String, keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWaterPrintKeyResponse {
        try await self.deleteWaterPrintKey(.init(instanceId: instanceId, keyId: keyId), region: region, logger: logger, on: eventLoop)
    }
}
