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

extension Cwp {
    /// UpdateMachineTags请求参数结构体
    public struct UpdateMachineTagsRequest: TCRequestModel {
        /// 机器 Quuid
        public let quuid: String

        /// 标签ID，该操作会覆盖原有的标签列表
        public let tagIds: [UInt64]?

        /// 服务器地区 如: ap-guangzhou
        public let machineRegion: String?

        /// 服务器类型(CVM|BM|ECM|LH|Other)
        public let machineArea: String?

        public init(quuid: String, tagIds: [UInt64]? = nil, machineRegion: String? = nil, machineArea: String? = nil) {
            self.quuid = quuid
            self.tagIds = tagIds
            self.machineRegion = machineRegion
            self.machineArea = machineArea
        }

        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case tagIds = "TagIds"
            case machineRegion = "MachineRegion"
            case machineArea = "MachineArea"
        }
    }

    /// UpdateMachineTags返回参数结构体
    public struct UpdateMachineTagsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 关联机器标签列表
    @inlinable @discardableResult
    public func updateMachineTags(_ input: UpdateMachineTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMachineTagsResponse> {
        self.client.execute(action: "UpdateMachineTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关联机器标签列表
    @inlinable @discardableResult
    public func updateMachineTags(_ input: UpdateMachineTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMachineTagsResponse {
        try await self.client.execute(action: "UpdateMachineTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关联机器标签列表
    @inlinable @discardableResult
    public func updateMachineTags(quuid: String, tagIds: [UInt64]? = nil, machineRegion: String? = nil, machineArea: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateMachineTagsResponse> {
        self.updateMachineTags(.init(quuid: quuid, tagIds: tagIds, machineRegion: machineRegion, machineArea: machineArea), region: region, logger: logger, on: eventLoop)
    }

    /// 关联机器标签列表
    @inlinable @discardableResult
    public func updateMachineTags(quuid: String, tagIds: [UInt64]? = nil, machineRegion: String? = nil, machineArea: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMachineTagsResponse {
        try await self.updateMachineTags(.init(quuid: quuid, tagIds: tagIds, machineRegion: machineRegion, machineArea: machineArea), region: region, logger: logger, on: eventLoop)
    }
}
