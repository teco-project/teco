//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cam {
    /// CreateAccessKey请求参数结构体
    public struct CreateAccessKeyRequest: TCRequestModel {
        /// 指定用户Uin，不填默认为当前用户创建访问密钥
        public let targetUin: UInt64?

        public init(targetUin: UInt64? = nil) {
            self.targetUin = targetUin
        }

        enum CodingKeys: String, CodingKey {
            case targetUin = "TargetUin"
        }
    }

    /// CreateAccessKey返回参数结构体
    public struct CreateAccessKeyResponse: TCResponseModel {
        /// 访问密钥
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accessKey: AccessKeyDetail?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessKey = "AccessKey"
            case requestId = "RequestId"
        }
    }

    /// 创建访问密钥
    ///
    /// 为CAM用户创建访问密钥
    @inlinable
    public func createAccessKey(_ input: CreateAccessKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccessKeyResponse> {
        self.client.execute(action: "CreateAccessKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建访问密钥
    ///
    /// 为CAM用户创建访问密钥
    @inlinable
    public func createAccessKey(_ input: CreateAccessKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccessKeyResponse {
        try await self.client.execute(action: "CreateAccessKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建访问密钥
    ///
    /// 为CAM用户创建访问密钥
    @inlinable
    public func createAccessKey(targetUin: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccessKeyResponse> {
        self.createAccessKey(CreateAccessKeyRequest(targetUin: targetUin), region: region, logger: logger, on: eventLoop)
    }

    /// 创建访问密钥
    ///
    /// 为CAM用户创建访问密钥
    @inlinable
    public func createAccessKey(targetUin: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccessKeyResponse {
        try await self.createAccessKey(CreateAccessKeyRequest(targetUin: targetUin), region: region, logger: logger, on: eventLoop)
    }
}
