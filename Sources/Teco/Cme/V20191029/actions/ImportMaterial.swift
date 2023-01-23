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

extension Cme {
    /// ImportMaterial请求参数结构体
    public struct ImportMaterialRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 媒体归属者，可支持归属团队或个人。
        public let owner: Entity

        /// 媒体名称，不能超过30个字符。
        public let name: String

        /// 导入媒资类型，取值：
        /// <li>VOD：云点播文件；</li>
        /// <li>EXTERNAL：媒资绑定。</li>
        ///
        /// 注意：如果不填默认为云点播文件，如果媒体存储在非腾讯云点播中，都需要使用媒资绑定。另外，导入云点播的文件，使用云点播的子应用 Id 必须与创建多媒体创作引擎平台时使用的云点播子应用一致。
        public let sourceType: String?

        /// 云点播媒资 FileId，仅当 SourceType 为 VOD 时有效。
        public let vodFileId: String?

        /// 原始媒资文件信息，当 SourceType 取值 EXTERNAL 的时候必填。
        public let externalMediaInfo: ExternalMediaInfo?

        /// 媒体分类路径，形如："/a/b"，层级数不能超过10，每个层级长度不能超过15字符。若不填则默认为根路径。
        public let classPath: String?

        /// 媒体预处理任务参数 ID。可取值有：
        /// <li>10：进行编辑预处理。</li>
        public let preProcessDefinition: Int64?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以向任意团队或者个人导入媒体。如果指定操作者，如果媒体归属为个人，则操作者必须与归属者一致；如果媒体归属为团队，则必须为团队可导入媒体的团队成员(如果没有特殊设置，所有团队成员可导入媒体)。
        public let `operator`: String?

        public init(platform: String, owner: Entity, name: String, sourceType: String? = nil, vodFileId: String? = nil, externalMediaInfo: ExternalMediaInfo? = nil, classPath: String? = nil, preProcessDefinition: Int64? = nil, operator: String? = nil) {
            self.platform = platform
            self.owner = owner
            self.name = name
            self.sourceType = sourceType
            self.vodFileId = vodFileId
            self.externalMediaInfo = externalMediaInfo
            self.classPath = classPath
            self.preProcessDefinition = preProcessDefinition
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case owner = "Owner"
            case name = "Name"
            case sourceType = "SourceType"
            case vodFileId = "VodFileId"
            case externalMediaInfo = "ExternalMediaInfo"
            case classPath = "ClassPath"
            case preProcessDefinition = "PreProcessDefinition"
            case `operator` = "Operator"
        }
    }

    /// ImportMaterial返回参数结构体
    public struct ImportMaterialResponse: TCResponseModel {
        /// 媒体 Id。
        public let materialId: String

        /// 媒体文预处理任务 ID，如果未指定发起预处理任务则为空。
        public let preProcessTaskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case materialId = "MaterialId"
            case preProcessTaskId = "PreProcessTaskId"
            case requestId = "RequestId"
        }
    }

    /// 导入媒体
    ///
    /// 将云点播媒资文件导入到多媒体创作引擎媒体资源库。支持导入媒体归属团队或者个人。
    @inlinable
    public func importMaterial(_ input: ImportMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportMaterialResponse> {
        self.client.execute(action: "ImportMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导入媒体
    ///
    /// 将云点播媒资文件导入到多媒体创作引擎媒体资源库。支持导入媒体归属团队或者个人。
    @inlinable
    public func importMaterial(_ input: ImportMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportMaterialResponse {
        try await self.client.execute(action: "ImportMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导入媒体
    ///
    /// 将云点播媒资文件导入到多媒体创作引擎媒体资源库。支持导入媒体归属团队或者个人。
    @inlinable
    public func importMaterial(platform: String, owner: Entity, name: String, sourceType: String? = nil, vodFileId: String? = nil, externalMediaInfo: ExternalMediaInfo? = nil, classPath: String? = nil, preProcessDefinition: Int64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportMaterialResponse> {
        self.importMaterial(ImportMaterialRequest(platform: platform, owner: owner, name: name, sourceType: sourceType, vodFileId: vodFileId, externalMediaInfo: externalMediaInfo, classPath: classPath, preProcessDefinition: preProcessDefinition, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 导入媒体
    ///
    /// 将云点播媒资文件导入到多媒体创作引擎媒体资源库。支持导入媒体归属团队或者个人。
    @inlinable
    public func importMaterial(platform: String, owner: Entity, name: String, sourceType: String? = nil, vodFileId: String? = nil, externalMediaInfo: ExternalMediaInfo? = nil, classPath: String? = nil, preProcessDefinition: Int64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportMaterialResponse {
        try await self.importMaterial(ImportMaterialRequest(platform: platform, owner: owner, name: name, sourceType: sourceType, vodFileId: vodFileId, externalMediaInfo: externalMediaInfo, classPath: classPath, preProcessDefinition: preProcessDefinition, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
