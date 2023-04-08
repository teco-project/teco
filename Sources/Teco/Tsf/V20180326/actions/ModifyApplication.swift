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

extension Tsf {
    /// ModifyApplication请求参数结构体
    public struct ModifyApplicationRequest: TCRequestModel {
        /// 应用ID
        public let applicationId: String

        /// 应用名称
        public let applicationName: String?

        /// 应用备注
        public let applicationDesc: String?

        /// 应用备注名
        public let applicationRemarkName: String?

        /// 服务配置信息列表
        public let serviceConfigList: [ServiceConfig]?

        public init(applicationId: String, applicationName: String? = nil, applicationDesc: String? = nil, applicationRemarkName: String? = nil, serviceConfigList: [ServiceConfig]? = nil) {
            self.applicationId = applicationId
            self.applicationName = applicationName
            self.applicationDesc = applicationDesc
            self.applicationRemarkName = applicationRemarkName
            self.serviceConfigList = serviceConfigList
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case applicationName = "ApplicationName"
            case applicationDesc = "ApplicationDesc"
            case applicationRemarkName = "ApplicationRemarkName"
            case serviceConfigList = "ServiceConfigList"
        }
    }

    /// ModifyApplication返回参数结构体
    public struct ModifyApplicationResponse: TCResponseModel {
        /// true/false
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 修改应用
    @inlinable
    public func modifyApplication(_ input: ModifyApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationResponse> {
        self.client.execute(action: "ModifyApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改应用
    @inlinable
    public func modifyApplication(_ input: ModifyApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationResponse {
        try await self.client.execute(action: "ModifyApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改应用
    @inlinable
    public func modifyApplication(applicationId: String, applicationName: String? = nil, applicationDesc: String? = nil, applicationRemarkName: String? = nil, serviceConfigList: [ServiceConfig]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationResponse> {
        self.modifyApplication(.init(applicationId: applicationId, applicationName: applicationName, applicationDesc: applicationDesc, applicationRemarkName: applicationRemarkName, serviceConfigList: serviceConfigList), region: region, logger: logger, on: eventLoop)
    }

    /// 修改应用
    @inlinable
    public func modifyApplication(applicationId: String, applicationName: String? = nil, applicationDesc: String? = nil, applicationRemarkName: String? = nil, serviceConfigList: [ServiceConfig]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationResponse {
        try await self.modifyApplication(.init(applicationId: applicationId, applicationName: applicationName, applicationDesc: applicationDesc, applicationRemarkName: applicationRemarkName, serviceConfigList: serviceConfigList), region: region, logger: logger, on: eventLoop)
    }
}
