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

extension Cbs {
    /// ModifyDiskAttributes请求参数结构体
    public struct ModifyDiskAttributesRequest: TCRequestModel {
        /// 一个或多个待操作的云硬盘ID。如果传入多个云盘ID，仅支持所有云盘修改为同一属性。
        public let diskIds: [String]

        /// 新的云硬盘名称。
        public let diskName: String?

        /// 是否为弹性云盘，FALSE表示非弹性云盘，TRUE表示弹性云盘。仅支持非弹性云盘修改为弹性云盘。
        public let portable: Bool?

        /// 新的云硬盘项目ID，只支持修改弹性云盘的项目ID。通过[DescribeProject](/document/api/378/4400)接口查询可用项目及其ID。
        public let projectId: UInt64?

        /// 成功挂载到云主机后该云硬盘是否随云主机销毁，TRUE表示随云主机销毁，FALSE表示不随云主机销毁。仅支持按量计费云硬盘数据盘。
        public let deleteWithInstance: Bool?

        /// 变更云盘类型时，可传入该参数，表示变更的目标类型，取值范围：<br><li>CLOUD_PREMIUM：表示高性能云硬盘<br><li>CLOUD_SSD：表示SSD云硬盘。<br>当前不支持批量变更类型，即传入DiskType时，DiskIds仅支持传入一块云盘；<br>变更云盘类型时不支持同时变更其他属性。
        public let diskType: String?

        public init(diskIds: [String], diskName: String? = nil, portable: Bool? = nil, projectId: UInt64? = nil, deleteWithInstance: Bool? = nil, diskType: String? = nil) {
            self.diskIds = diskIds
            self.diskName = diskName
            self.portable = portable
            self.projectId = projectId
            self.deleteWithInstance = deleteWithInstance
            self.diskType = diskType
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
            case diskName = "DiskName"
            case portable = "Portable"
            case projectId = "ProjectId"
            case deleteWithInstance = "DeleteWithInstance"
            case diskType = "DiskType"
        }
    }

    /// ModifyDiskAttributes返回参数结构体
    public struct ModifyDiskAttributesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改云硬盘属性
    ///
    /// * 只支持修改弹性云盘的项目ID。随云主机创建的云硬盘项目ID与云主机联动。可以通过[DescribeDisks](/document/product/362/16315)接口查询，见输出参数中Portable字段解释。
    /// * “云硬盘名称”仅为方便用户自己管理之用，腾讯云并不以此名称作为提交工单或是进行云盘管理操作的依据。
    /// * 支持批量操作，如果传入多个云盘ID，则所有云盘修改为同一属性。如果存在不允许操作的云盘，则操作不执行，以特定错误码返回。
    @inlinable @discardableResult
    public func modifyDiskAttributes(_ input: ModifyDiskAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDiskAttributesResponse> {
        self.client.execute(action: "ModifyDiskAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云硬盘属性
    ///
    /// * 只支持修改弹性云盘的项目ID。随云主机创建的云硬盘项目ID与云主机联动。可以通过[DescribeDisks](/document/product/362/16315)接口查询，见输出参数中Portable字段解释。
    /// * “云硬盘名称”仅为方便用户自己管理之用，腾讯云并不以此名称作为提交工单或是进行云盘管理操作的依据。
    /// * 支持批量操作，如果传入多个云盘ID，则所有云盘修改为同一属性。如果存在不允许操作的云盘，则操作不执行，以特定错误码返回。
    @inlinable @discardableResult
    public func modifyDiskAttributes(_ input: ModifyDiskAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDiskAttributesResponse {
        try await self.client.execute(action: "ModifyDiskAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云硬盘属性
    ///
    /// * 只支持修改弹性云盘的项目ID。随云主机创建的云硬盘项目ID与云主机联动。可以通过[DescribeDisks](/document/product/362/16315)接口查询，见输出参数中Portable字段解释。
    /// * “云硬盘名称”仅为方便用户自己管理之用，腾讯云并不以此名称作为提交工单或是进行云盘管理操作的依据。
    /// * 支持批量操作，如果传入多个云盘ID，则所有云盘修改为同一属性。如果存在不允许操作的云盘，则操作不执行，以特定错误码返回。
    @inlinable @discardableResult
    public func modifyDiskAttributes(diskIds: [String], diskName: String? = nil, portable: Bool? = nil, projectId: UInt64? = nil, deleteWithInstance: Bool? = nil, diskType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDiskAttributesResponse> {
        let input = ModifyDiskAttributesRequest(diskIds: diskIds, diskName: diskName, portable: portable, projectId: projectId, deleteWithInstance: deleteWithInstance, diskType: diskType)
        return self.client.execute(action: "ModifyDiskAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云硬盘属性
    ///
    /// * 只支持修改弹性云盘的项目ID。随云主机创建的云硬盘项目ID与云主机联动。可以通过[DescribeDisks](/document/product/362/16315)接口查询，见输出参数中Portable字段解释。
    /// * “云硬盘名称”仅为方便用户自己管理之用，腾讯云并不以此名称作为提交工单或是进行云盘管理操作的依据。
    /// * 支持批量操作，如果传入多个云盘ID，则所有云盘修改为同一属性。如果存在不允许操作的云盘，则操作不执行，以特定错误码返回。
    @inlinable @discardableResult
    public func modifyDiskAttributes(diskIds: [String], diskName: String? = nil, portable: Bool? = nil, projectId: UInt64? = nil, deleteWithInstance: Bool? = nil, diskType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDiskAttributesResponse {
        let input = ModifyDiskAttributesRequest(diskIds: diskIds, diskName: diskName, portable: portable, projectId: projectId, deleteWithInstance: deleteWithInstance, diskType: diskType)
        return try await self.client.execute(action: "ModifyDiskAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
