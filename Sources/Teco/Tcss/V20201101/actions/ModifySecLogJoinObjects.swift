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

extension Tcss {
    /// ModifySecLogJoinObjects请求参数结构体
    public struct ModifySecLogJoinObjectsRequest: TCRequestModel {
        /// 日志类型
        /// bash日志: container_bash
        /// 容器启动: container_launch
        /// k8sApi: k8s_api
        public let logType: String

        /// 绑定主机quuid列表
        public let bindList: [String]?

        /// 待解绑主机quuid列表
        public let unBindList: [String]?

        public init(logType: String, bindList: [String]? = nil, unBindList: [String]? = nil) {
            self.logType = logType
            self.bindList = bindList
            self.unBindList = unBindList
        }

        enum CodingKeys: String, CodingKey {
            case logType = "LogType"
            case bindList = "BindList"
            case unBindList = "UnBindList"
        }
    }

    /// ModifySecLogJoinObjects返回参数结构体
    public struct ModifySecLogJoinObjectsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改安全日志接入对象
    @inlinable @discardableResult
    public func modifySecLogJoinObjects(_ input: ModifySecLogJoinObjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecLogJoinObjectsResponse> {
        self.client.execute(action: "ModifySecLogJoinObjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改安全日志接入对象
    @inlinable @discardableResult
    public func modifySecLogJoinObjects(_ input: ModifySecLogJoinObjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecLogJoinObjectsResponse {
        try await self.client.execute(action: "ModifySecLogJoinObjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改安全日志接入对象
    @inlinable @discardableResult
    public func modifySecLogJoinObjects(logType: String, bindList: [String]? = nil, unBindList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecLogJoinObjectsResponse> {
        self.modifySecLogJoinObjects(.init(logType: logType, bindList: bindList, unBindList: unBindList), region: region, logger: logger, on: eventLoop)
    }

    /// 修改安全日志接入对象
    @inlinable @discardableResult
    public func modifySecLogJoinObjects(logType: String, bindList: [String]? = nil, unBindList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecLogJoinObjectsResponse {
        try await self.modifySecLogJoinObjects(.init(logType: logType, bindList: bindList, unBindList: unBindList), region: region, logger: logger, on: eventLoop)
    }
}
