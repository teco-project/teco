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

extension Cbs {
    /// 修改快照分享信息
    ///
    /// 本接口（ModifySnapshotsSharePermission）用于修改快照分享信息。
    /// 分享快照后，被分享账户可以通过该快照创建云硬盘。
    /// * 每个快照最多可分享给50个账户。
    /// * 分享快照无法更改名称，描述，仅可用于创建云硬盘。
    /// * 只支持分享到对方账户相同地域。
    /// * 仅支持分享数据盘快照。
    @inlinable
    public func modifySnapshotsSharePermission(_ input: ModifySnapshotsSharePermissionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifySnapshotsSharePermissionResponse > {
        self.client.execute(action: "ModifySnapshotsSharePermission", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改快照分享信息
    ///
    /// 本接口（ModifySnapshotsSharePermission）用于修改快照分享信息。
    /// 分享快照后，被分享账户可以通过该快照创建云硬盘。
    /// * 每个快照最多可分享给50个账户。
    /// * 分享快照无法更改名称，描述，仅可用于创建云硬盘。
    /// * 只支持分享到对方账户相同地域。
    /// * 仅支持分享数据盘快照。
    @inlinable
    public func modifySnapshotsSharePermission(_ input: ModifySnapshotsSharePermissionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySnapshotsSharePermissionResponse {
        try await self.client.execute(action: "ModifySnapshotsSharePermission", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifySnapshotsSharePermission请求参数结构体
    public struct ModifySnapshotsSharePermissionRequest: TCRequestModel {
        /// 接收分享快照的账号Id列表，array型参数的格式可以参考[API简介](https://cloud.tencent.com/document/api/213/568)。帐号ID不同于QQ号，查询用户帐号ID请查看[帐号信息](https://console.cloud.tencent.com/developer)中的帐号ID栏。
        public let accountIds: [String]
        
        /// 操作，包括 SHARE，CANCEL。其中SHARE代表分享操作，CANCEL代表取消分享操作。
        public let permission: String
        
        /// 快照ID, 可通过[DescribeSnapshots](https://cloud.tencent.com/document/api/362/15647)查询获取。
        public let snapshotIds: [String]
        
        public init (accountIds: [String], permission: String, snapshotIds: [String]) {
            self.accountIds = accountIds
            self.permission = permission
            self.snapshotIds = snapshotIds
        }
        
        enum CodingKeys: String, CodingKey {
            case accountIds = "AccountIds"
            case permission = "Permission"
            case snapshotIds = "SnapshotIds"
        }
    }
    
    /// ModifySnapshotsSharePermission返回参数结构体
    public struct ModifySnapshotsSharePermissionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
