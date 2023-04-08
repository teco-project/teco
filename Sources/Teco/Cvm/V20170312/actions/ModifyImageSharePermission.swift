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

import TecoCore

extension Cvm {
    /// ModifyImageSharePermission请求参数结构体
    public struct ModifyImageSharePermissionRequest: TCRequestModel {
        /// 镜像ID，形如`img-gvbnzy6f`。镜像Id可以通过如下方式获取：<br><li>通过[DescribeImages](https://cloud.tencent.com/document/api/213/15715)接口返回的`ImageId`获取。<br><li>通过[镜像控制台](https://console.cloud.tencent.com/cvm/image)获取。 <br>镜像ID必须指定为状态为`NORMAL`的镜像。镜像状态请参考[镜像数据表](https://cloud.tencent.com/document/product/213/15753#Image)。
        public let imageId: String

        /// 接收分享镜像的账号Id列表，array型参数的格式可以参考[API简介](/document/api/213/568)。帐号ID不同于QQ号，查询用户帐号ID请查看[帐号信息](https://console.cloud.tencent.com/developer)中的帐号ID栏。
        public let accountIds: [String]

        /// 操作，包括 `SHARE`，`CANCEL`。其中`SHARE`代表分享操作，`CANCEL`代表取消分享操作。
        public let permission: String

        public init(imageId: String, accountIds: [String], permission: String) {
            self.imageId = imageId
            self.accountIds = accountIds
            self.permission = permission
        }

        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
            case accountIds = "AccountIds"
            case permission = "Permission"
        }
    }

    /// ModifyImageSharePermission返回参数结构体
    public struct ModifyImageSharePermissionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改镜像分享信息
    ///
    /// 本接口（ModifyImageSharePermission）用于修改镜像分享信息。
    ///
    /// * 分享镜像后，被分享账户可以通过该镜像创建实例。
    /// * 每个自定义镜像最多可共享给50个账户。
    /// * 分享镜像无法更改名称，描述，仅可用于创建实例。
    /// * 只支持分享到对方账户相同地域。
    @inlinable @discardableResult
    public func modifyImageSharePermission(_ input: ModifyImageSharePermissionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyImageSharePermissionResponse> {
        self.client.execute(action: "ModifyImageSharePermission", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改镜像分享信息
    ///
    /// 本接口（ModifyImageSharePermission）用于修改镜像分享信息。
    ///
    /// * 分享镜像后，被分享账户可以通过该镜像创建实例。
    /// * 每个自定义镜像最多可共享给50个账户。
    /// * 分享镜像无法更改名称，描述，仅可用于创建实例。
    /// * 只支持分享到对方账户相同地域。
    @inlinable @discardableResult
    public func modifyImageSharePermission(_ input: ModifyImageSharePermissionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyImageSharePermissionResponse {
        try await self.client.execute(action: "ModifyImageSharePermission", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改镜像分享信息
    ///
    /// 本接口（ModifyImageSharePermission）用于修改镜像分享信息。
    ///
    /// * 分享镜像后，被分享账户可以通过该镜像创建实例。
    /// * 每个自定义镜像最多可共享给50个账户。
    /// * 分享镜像无法更改名称，描述，仅可用于创建实例。
    /// * 只支持分享到对方账户相同地域。
    @inlinable @discardableResult
    public func modifyImageSharePermission(imageId: String, accountIds: [String], permission: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyImageSharePermissionResponse> {
        self.modifyImageSharePermission(.init(imageId: imageId, accountIds: accountIds, permission: permission), region: region, logger: logger, on: eventLoop)
    }

    /// 修改镜像分享信息
    ///
    /// 本接口（ModifyImageSharePermission）用于修改镜像分享信息。
    ///
    /// * 分享镜像后，被分享账户可以通过该镜像创建实例。
    /// * 每个自定义镜像最多可共享给50个账户。
    /// * 分享镜像无法更改名称，描述，仅可用于创建实例。
    /// * 只支持分享到对方账户相同地域。
    @inlinable @discardableResult
    public func modifyImageSharePermission(imageId: String, accountIds: [String], permission: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyImageSharePermissionResponse {
        try await self.modifyImageSharePermission(.init(imageId: imageId, accountIds: accountIds, permission: permission), region: region, logger: logger, on: eventLoop)
    }
}
