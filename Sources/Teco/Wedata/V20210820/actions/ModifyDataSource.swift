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

extension Wedata {
    /// ModifyDataSource请求参数结构体
    public struct ModifyDataSourceRequest: TCRequestModel {
        /// 数据源名称，在相同SpaceName下，数据源名称不能为空
        public let name: String

        /// 数据源类别：绑定引擎、绑定数据库
        public let category: String

        /// 数据源类型:枚举值
        public let type: String

        /// 数据源ID
        public let id: UInt64?

        /// 业务侧数据源的配置信息扩展
        public let bizParams: String?

        /// 数据源的配置信息，以JSON KV存储，根据每个数据源类型不同，而KV存储信息不同
        public let params: String?

        /// 数据源描述信息
        public let description: String?

        /// 数据源展示名，为了可视化查看
        public let display: String?

        /// 若数据源列表为绑定数据库，则为db名称
        public let databaseName: String?

        /// 数据源引擎的实例ID，如CDB实例ID
        public let instance: String?

        /// 数据源数据源的可见性，1为可见、0为不可见。默认为1
        public let status: UInt64?

        /// 数据源所属的业务空间名称
        public let clusterId: String?

        /// 是否采集
        public let collect: String?

        /// 项目id
        public let ownerProjectId: String?

        /// 项目名称
        public let ownerProjectName: String?

        /// 项目中文名
        public let ownerProjectIdent: String?

        /// cos bucket
        public let cosBucket: String?

        /// cos region
        public let cosRegion: String?

        public init(name: String, category: String, type: String, id: UInt64? = nil, bizParams: String? = nil, params: String? = nil, description: String? = nil, display: String? = nil, databaseName: String? = nil, instance: String? = nil, status: UInt64? = nil, clusterId: String? = nil, collect: String? = nil, ownerProjectId: String? = nil, ownerProjectName: String? = nil, ownerProjectIdent: String? = nil, cosBucket: String? = nil, cosRegion: String? = nil) {
            self.name = name
            self.category = category
            self.type = type
            self.id = id
            self.bizParams = bizParams
            self.params = params
            self.description = description
            self.display = display
            self.databaseName = databaseName
            self.instance = instance
            self.status = status
            self.clusterId = clusterId
            self.collect = collect
            self.ownerProjectId = ownerProjectId
            self.ownerProjectName = ownerProjectName
            self.ownerProjectIdent = ownerProjectIdent
            self.cosBucket = cosBucket
            self.cosRegion = cosRegion
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case category = "Category"
            case type = "Type"
            case id = "ID"
            case bizParams = "BizParams"
            case params = "Params"
            case description = "Description"
            case display = "Display"
            case databaseName = "DatabaseName"
            case instance = "Instance"
            case status = "Status"
            case clusterId = "ClusterId"
            case collect = "Collect"
            case ownerProjectId = "OwnerProjectId"
            case ownerProjectName = "OwnerProjectName"
            case ownerProjectIdent = "OwnerProjectIdent"
            case cosBucket = "COSBucket"
            case cosRegion = "COSRegion"
        }
    }

    /// ModifyDataSource返回参数结构体
    public struct ModifyDataSourceResponse: TCResponseModel {
        /// 是否成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 数据源管理-修改数据源【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 修改数据源
    @inlinable
    public func modifyDataSource(_ input: ModifyDataSourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDataSourceResponse> {
        self.client.execute(action: "ModifyDataSource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 数据源管理-修改数据源【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 修改数据源
    @inlinable
    public func modifyDataSource(_ input: ModifyDataSourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDataSourceResponse {
        try await self.client.execute(action: "ModifyDataSource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 数据源管理-修改数据源【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 修改数据源
    @inlinable
    public func modifyDataSource(name: String, category: String, type: String, id: UInt64? = nil, bizParams: String? = nil, params: String? = nil, description: String? = nil, display: String? = nil, databaseName: String? = nil, instance: String? = nil, status: UInt64? = nil, clusterId: String? = nil, collect: String? = nil, ownerProjectId: String? = nil, ownerProjectName: String? = nil, ownerProjectIdent: String? = nil, cosBucket: String? = nil, cosRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDataSourceResponse> {
        self.modifyDataSource(ModifyDataSourceRequest(name: name, category: category, type: type, id: id, bizParams: bizParams, params: params, description: description, display: display, databaseName: databaseName, instance: instance, status: status, clusterId: clusterId, collect: collect, ownerProjectId: ownerProjectId, ownerProjectName: ownerProjectName, ownerProjectIdent: ownerProjectIdent, cosBucket: cosBucket, cosRegion: cosRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 数据源管理-修改数据源【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 修改数据源
    @inlinable
    public func modifyDataSource(name: String, category: String, type: String, id: UInt64? = nil, bizParams: String? = nil, params: String? = nil, description: String? = nil, display: String? = nil, databaseName: String? = nil, instance: String? = nil, status: UInt64? = nil, clusterId: String? = nil, collect: String? = nil, ownerProjectId: String? = nil, ownerProjectName: String? = nil, ownerProjectIdent: String? = nil, cosBucket: String? = nil, cosRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDataSourceResponse {
        try await self.modifyDataSource(ModifyDataSourceRequest(name: name, category: category, type: type, id: id, bizParams: bizParams, params: params, description: description, display: display, databaseName: databaseName, instance: instance, status: status, clusterId: clusterId, collect: collect, ownerProjectId: ownerProjectId, ownerProjectName: ownerProjectName, ownerProjectIdent: ownerProjectIdent, cosBucket: cosBucket, cosRegion: cosRegion), region: region, logger: logger, on: eventLoop)
    }
}
