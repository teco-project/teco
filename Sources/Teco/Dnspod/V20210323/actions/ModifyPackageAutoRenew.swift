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

extension Dnspod {
    /// ModifyPackageAutoRenew请求参数结构体
    public struct ModifyPackageAutoRenewRequest: TCRequestModel {
        /// 资源ID。可以在控制台查看所有的资源
        public let resourceId: String

        /// enable 开启自动续费；disable 关闭自动续费
        public let status: String

        public init(resourceId: String, status: String) {
            self.resourceId = resourceId
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case status = "Status"
        }
    }

    /// ModifyPackageAutoRenew返回参数结构体
    public struct ModifyPackageAutoRenewResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// DNS 解析套餐自动续费设置
    @inlinable @discardableResult
    public func modifyPackageAutoRenew(_ input: ModifyPackageAutoRenewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPackageAutoRenewResponse> {
        self.client.execute(action: "ModifyPackageAutoRenew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// DNS 解析套餐自动续费设置
    @inlinable @discardableResult
    public func modifyPackageAutoRenew(_ input: ModifyPackageAutoRenewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPackageAutoRenewResponse {
        try await self.client.execute(action: "ModifyPackageAutoRenew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// DNS 解析套餐自动续费设置
    @inlinable @discardableResult
    public func modifyPackageAutoRenew(resourceId: String, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPackageAutoRenewResponse> {
        let input = ModifyPackageAutoRenewRequest(resourceId: resourceId, status: status)
        return self.client.execute(action: "ModifyPackageAutoRenew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// DNS 解析套餐自动续费设置
    @inlinable @discardableResult
    public func modifyPackageAutoRenew(resourceId: String, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPackageAutoRenewResponse {
        let input = ModifyPackageAutoRenewRequest(resourceId: resourceId, status: status)
        return try await self.client.execute(action: "ModifyPackageAutoRenew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
