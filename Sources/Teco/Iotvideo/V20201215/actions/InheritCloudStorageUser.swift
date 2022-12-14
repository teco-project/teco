//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotvideo {
    /// InheritCloudStorageUser请求参数结构体
    public struct InheritCloudStorageUserRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 原始用户ID
        public let userId: String

        /// 目标用户ID
        public let toUserId: String

        public init(productId: String, deviceName: String, userId: String, toUserId: String) {
            self.productId = productId
            self.deviceName = deviceName
            self.userId = userId
            self.toUserId = toUserId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case userId = "UserId"
            case toUserId = "ToUserId"
        }
    }

    /// InheritCloudStorageUser返回参数结构体
    public struct InheritCloudStorageUserResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 继承云存用户
    @inlinable
    public func inheritCloudStorageUser(_ input: InheritCloudStorageUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InheritCloudStorageUserResponse > {
        self.client.execute(action: "InheritCloudStorageUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 继承云存用户
    @inlinable
    public func inheritCloudStorageUser(_ input: InheritCloudStorageUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InheritCloudStorageUserResponse {
        try await self.client.execute(action: "InheritCloudStorageUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 继承云存用户
    @inlinable
    public func inheritCloudStorageUser(productId: String, deviceName: String, userId: String, toUserId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InheritCloudStorageUserResponse > {
        self.inheritCloudStorageUser(InheritCloudStorageUserRequest(productId: productId, deviceName: deviceName, userId: userId, toUserId: toUserId), logger: logger, on: eventLoop)
    }

    /// 继承云存用户
    @inlinable
    public func inheritCloudStorageUser(productId: String, deviceName: String, userId: String, toUserId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InheritCloudStorageUserResponse {
        try await self.inheritCloudStorageUser(InheritCloudStorageUserRequest(productId: productId, deviceName: deviceName, userId: userId, toUserId: toUserId), logger: logger, on: eventLoop)
    }
}
