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

extension Cynosdb {
    /// ModifyResourcePackageName请求参数结构体
    public struct ModifyResourcePackageNameRequest: TCRequestModel {
        /// 资源包唯一ID
        public let packageId: String

        /// 自定义的资源包名称，最长支持120个字符
        public let packageName: String

        public init(packageId: String, packageName: String) {
            self.packageId = packageId
            self.packageName = packageName
        }

        enum CodingKeys: String, CodingKey {
            case packageId = "PackageId"
            case packageName = "PackageName"
        }
    }

    /// ModifyResourcePackageName返回参数结构体
    public struct ModifyResourcePackageNameResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改资源包名称
    @inlinable @discardableResult
    public func modifyResourcePackageName(_ input: ModifyResourcePackageNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyResourcePackageNameResponse> {
        self.client.execute(action: "ModifyResourcePackageName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改资源包名称
    @inlinable @discardableResult
    public func modifyResourcePackageName(_ input: ModifyResourcePackageNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyResourcePackageNameResponse {
        try await self.client.execute(action: "ModifyResourcePackageName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改资源包名称
    @inlinable @discardableResult
    public func modifyResourcePackageName(packageId: String, packageName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyResourcePackageNameResponse> {
        self.modifyResourcePackageName(.init(packageId: packageId, packageName: packageName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改资源包名称
    @inlinable @discardableResult
    public func modifyResourcePackageName(packageId: String, packageName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyResourcePackageNameResponse {
        try await self.modifyResourcePackageName(.init(packageId: packageId, packageName: packageName), region: region, logger: logger, on: eventLoop)
    }
}