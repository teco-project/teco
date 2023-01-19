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

extension Chdfs {
    /// ModifyMountPoint请求参数结构体
    public struct ModifyMountPointRequest: TCRequestModel {
        /// 挂载点ID
        public let mountPointId: String

        /// 挂载点名称
        public let mountPointName: String?

        /// 挂载点状态
        public let mountPointStatus: UInt64?

        /// 权限组ID
        public let accessGroupId: String?

        public init(mountPointId: String, mountPointName: String? = nil, mountPointStatus: UInt64? = nil, accessGroupId: String? = nil) {
            self.mountPointId = mountPointId
            self.mountPointName = mountPointName
            self.mountPointStatus = mountPointStatus
            self.accessGroupId = accessGroupId
        }

        enum CodingKeys: String, CodingKey {
            case mountPointId = "MountPointId"
            case mountPointName = "MountPointName"
            case mountPointStatus = "MountPointStatus"
            case accessGroupId = "AccessGroupId"
        }
    }

    /// ModifyMountPoint返回参数结构体
    public struct ModifyMountPointResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改挂载点属性
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 修改挂载点属性。
    @inlinable
    public func modifyMountPoint(_ input: ModifyMountPointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMountPointResponse> {
        self.client.execute(action: "ModifyMountPoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改挂载点属性
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 修改挂载点属性。
    @inlinable
    public func modifyMountPoint(_ input: ModifyMountPointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMountPointResponse {
        try await self.client.execute(action: "ModifyMountPoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改挂载点属性
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 修改挂载点属性。
    @inlinable
    public func modifyMountPoint(mountPointId: String, mountPointName: String? = nil, mountPointStatus: UInt64? = nil, accessGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMountPointResponse> {
        self.modifyMountPoint(ModifyMountPointRequest(mountPointId: mountPointId, mountPointName: mountPointName, mountPointStatus: mountPointStatus, accessGroupId: accessGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改挂载点属性
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 修改挂载点属性。
    @inlinable
    public func modifyMountPoint(mountPointId: String, mountPointName: String? = nil, mountPointStatus: UInt64? = nil, accessGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMountPointResponse {
        try await self.modifyMountPoint(ModifyMountPointRequest(mountPointId: mountPointId, mountPointName: mountPointName, mountPointStatus: mountPointStatus, accessGroupId: accessGroupId), region: region, logger: logger, on: eventLoop)
    }
}
