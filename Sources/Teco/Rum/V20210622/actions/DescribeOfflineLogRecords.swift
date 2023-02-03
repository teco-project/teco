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
    /// DescribeOfflineLogRecords请求参数结构体
    public struct DescribeOfflineLogRecordsRequest: TCRequestModel {
        /// 项目唯一上报 key
        public let projectKey: String

        public init(projectKey: String) {
            self.projectKey = projectKey
        }

        enum CodingKeys: String, CodingKey {
            case projectKey = "ProjectKey"
        }
    }

    /// DescribeOfflineLogRecords返回参数结构体
    public struct DescribeOfflineLogRecordsResponse: TCResponseModel {
        /// 接口调用信息
        public let msg: String

        /// 记录 ID 数组
        public let recordSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case msg = "Msg"
            case recordSet = "RecordSet"
            case requestId = "RequestId"
        }
    }

    /// 获取所有离线日志记录(最多100条)
    @inlinable
    public func describeOfflineLogRecords(_ input: DescribeOfflineLogRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOfflineLogRecordsResponse> {
        self.client.execute(action: "DescribeOfflineLogRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取所有离线日志记录(最多100条)
    @inlinable
    public func describeOfflineLogRecords(_ input: DescribeOfflineLogRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOfflineLogRecordsResponse {
        try await self.client.execute(action: "DescribeOfflineLogRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取所有离线日志记录(最多100条)
    @inlinable
    public func describeOfflineLogRecords(projectKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOfflineLogRecordsResponse> {
        let input = DescribeOfflineLogRecordsRequest(projectKey: projectKey)
        return self.client.execute(action: "DescribeOfflineLogRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取所有离线日志记录(最多100条)
    @inlinable
    public func describeOfflineLogRecords(projectKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOfflineLogRecordsResponse {
        let input = DescribeOfflineLogRecordsRequest(projectKey: projectKey)
        return try await self.client.execute(action: "DescribeOfflineLogRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
