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
    /// OpenWanService请求参数结构体
    public struct OpenWanServiceRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// OpenWanService返回参数结构体
    public struct OpenWanServiceResponse: TCResponseModel {
        /// 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 开通实例外网访问
    ///
    /// 本接口(OpenWanService)用于开通实例外网访问。
    ///
    /// 注意，实例开通外网访问之前，需要先将实例进行 [实例初始化](https://cloud.tencent.com/document/api/236/15873) 操作。
    @inlinable
    public func openWanService(_ input: OpenWanServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenWanServiceResponse> {
        self.client.execute(action: "OpenWanService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开通实例外网访问
    ///
    /// 本接口(OpenWanService)用于开通实例外网访问。
    ///
    /// 注意，实例开通外网访问之前，需要先将实例进行 [实例初始化](https://cloud.tencent.com/document/api/236/15873) 操作。
    @inlinable
    public func openWanService(_ input: OpenWanServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenWanServiceResponse {
        try await self.client.execute(action: "OpenWanService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开通实例外网访问
    ///
    /// 本接口(OpenWanService)用于开通实例外网访问。
    ///
    /// 注意，实例开通外网访问之前，需要先将实例进行 [实例初始化](https://cloud.tencent.com/document/api/236/15873) 操作。
    @inlinable
    public func openWanService(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenWanServiceResponse> {
        self.openWanService(OpenWanServiceRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 开通实例外网访问
    ///
    /// 本接口(OpenWanService)用于开通实例外网访问。
    ///
    /// 注意，实例开通外网访问之前，需要先将实例进行 [实例初始化](https://cloud.tencent.com/document/api/236/15873) 操作。
    @inlinable
    public func openWanService(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenWanServiceResponse {
        try await self.openWanService(OpenWanServiceRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
