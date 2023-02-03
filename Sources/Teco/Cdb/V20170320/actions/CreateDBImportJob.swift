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

extension Cdb {
    /// CreateDBImportJob请求参数结构体
    public struct CreateDBImportJobRequest: TCRequestModel {
        /// 实例的 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 云数据库的用户名。
        public let user: String

        /// 文件名称。该文件是指用户已上传到腾讯云的文件，仅支持.sql文件。
        public let fileName: String?

        /// 云数据库实例 User 账号的密码。
        public let password: String?

        /// 导入的目标数据库名，不传表示不指定数据库。
        public let dbName: String?

        /// 腾讯云COS文件链接。 用户需要指定 FileName 或者 CosUrl 其中一个。 COS文件需要是 .sql 文件。
        public let cosUrl: String?

        public init(instanceId: String, user: String, fileName: String? = nil, password: String? = nil, dbName: String? = nil, cosUrl: String? = nil) {
            self.instanceId = instanceId
            self.user = user
            self.fileName = fileName
            self.password = password
            self.dbName = dbName
            self.cosUrl = cosUrl
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case user = "User"
            case fileName = "FileName"
            case password = "Password"
            case dbName = "DbName"
            case cosUrl = "CosUrl"
        }
    }

    /// CreateDBImportJob返回参数结构体
    public struct CreateDBImportJobResponse: TCResponseModel {
        /// 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 创建数据导入任务
    ///
    /// 本接口(CreateDBImportJob)用于创建云数据库数据导入任务。
    ///
    /// 注意，用户进行数据导入任务的文件，必须提前上传到腾讯云。用户须在控制台进行文件导入。
    @inlinable
    public func createDBImportJob(_ input: CreateDBImportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBImportJobResponse> {
        self.client.execute(action: "CreateDBImportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建数据导入任务
    ///
    /// 本接口(CreateDBImportJob)用于创建云数据库数据导入任务。
    ///
    /// 注意，用户进行数据导入任务的文件，必须提前上传到腾讯云。用户须在控制台进行文件导入。
    @inlinable
    public func createDBImportJob(_ input: CreateDBImportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBImportJobResponse {
        try await self.client.execute(action: "CreateDBImportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建数据导入任务
    ///
    /// 本接口(CreateDBImportJob)用于创建云数据库数据导入任务。
    ///
    /// 注意，用户进行数据导入任务的文件，必须提前上传到腾讯云。用户须在控制台进行文件导入。
    @inlinable
    public func createDBImportJob(instanceId: String, user: String, fileName: String? = nil, password: String? = nil, dbName: String? = nil, cosUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBImportJobResponse> {
        let input = CreateDBImportJobRequest(instanceId: instanceId, user: user, fileName: fileName, password: password, dbName: dbName, cosUrl: cosUrl)
        return self.client.execute(action: "CreateDBImportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建数据导入任务
    ///
    /// 本接口(CreateDBImportJob)用于创建云数据库数据导入任务。
    ///
    /// 注意，用户进行数据导入任务的文件，必须提前上传到腾讯云。用户须在控制台进行文件导入。
    @inlinable
    public func createDBImportJob(instanceId: String, user: String, fileName: String? = nil, password: String? = nil, dbName: String? = nil, cosUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBImportJobResponse {
        let input = CreateDBImportJobRequest(instanceId: instanceId, user: user, fileName: fileName, password: password, dbName: dbName, cosUrl: cosUrl)
        return try await self.client.execute(action: "CreateDBImportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
