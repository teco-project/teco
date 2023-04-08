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

extension Lighthouse {
    /// ModifyDisksAttribute请求参数结构体
    public struct ModifyDisksAttributeRequest: TCRequestModel {
        /// 云硬盘ID列表。
        public let diskIds: [String]

        /// 云硬盘名称。
        public let diskName: String

        public init(diskIds: [String], diskName: String) {
            self.diskIds = diskIds
            self.diskName = diskName
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
            case diskName = "DiskName"
        }
    }

    /// ModifyDisksAttribute返回参数结构体
    public struct ModifyDisksAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改云硬盘属性
    ///
    /// 本接口(ModifyDisksAttribute)用于修改云硬盘属性。
    @inlinable @discardableResult
    public func modifyDisksAttribute(_ input: ModifyDisksAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDisksAttributeResponse> {
        self.client.execute(action: "ModifyDisksAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云硬盘属性
    ///
    /// 本接口(ModifyDisksAttribute)用于修改云硬盘属性。
    @inlinable @discardableResult
    public func modifyDisksAttribute(_ input: ModifyDisksAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDisksAttributeResponse {
        try await self.client.execute(action: "ModifyDisksAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云硬盘属性
    ///
    /// 本接口(ModifyDisksAttribute)用于修改云硬盘属性。
    @inlinable @discardableResult
    public func modifyDisksAttribute(diskIds: [String], diskName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDisksAttributeResponse> {
        self.modifyDisksAttribute(.init(diskIds: diskIds, diskName: diskName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云硬盘属性
    ///
    /// 本接口(ModifyDisksAttribute)用于修改云硬盘属性。
    @inlinable @discardableResult
    public func modifyDisksAttribute(diskIds: [String], diskName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDisksAttributeResponse {
        try await self.modifyDisksAttribute(.init(diskIds: diskIds, diskName: diskName), region: region, logger: logger, on: eventLoop)
    }
}
