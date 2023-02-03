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

extension Rum {
    /// DeleteOfflineLogRecord请求参数结构体
    public struct DeleteOfflineLogRecordRequest: TCRequestModel {
        /// 项目唯一上报 key
        public let projectKey: String

        /// 离线日志文件 id
        public let fileID: String

        public init(projectKey: String, fileID: String) {
            self.projectKey = projectKey
            self.fileID = fileID
        }

        enum CodingKeys: String, CodingKey {
            case projectKey = "ProjectKey"
            case fileID = "FileID"
        }
    }

    /// DeleteOfflineLogRecord返回参数结构体
    public struct DeleteOfflineLogRecordResponse: TCResponseModel {
        /// 接口调用信息
        public let msg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 删除离线日志记录
    ///
    /// 删除对应的离线日志记录
    @inlinable
    public func deleteOfflineLogRecord(_ input: DeleteOfflineLogRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOfflineLogRecordResponse> {
        self.client.execute(action: "DeleteOfflineLogRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除离线日志记录
    ///
    /// 删除对应的离线日志记录
    @inlinable
    public func deleteOfflineLogRecord(_ input: DeleteOfflineLogRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOfflineLogRecordResponse {
        try await self.client.execute(action: "DeleteOfflineLogRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除离线日志记录
    ///
    /// 删除对应的离线日志记录
    @inlinable
    public func deleteOfflineLogRecord(projectKey: String, fileID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOfflineLogRecordResponse> {
        let input = DeleteOfflineLogRecordRequest(projectKey: projectKey, fileID: fileID)
        return self.client.execute(action: "DeleteOfflineLogRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除离线日志记录
    ///
    /// 删除对应的离线日志记录
    @inlinable
    public func deleteOfflineLogRecord(projectKey: String, fileID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOfflineLogRecordResponse {
        let input = DeleteOfflineLogRecordRequest(projectKey: projectKey, fileID: fileID)
        return try await self.client.execute(action: "DeleteOfflineLogRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
