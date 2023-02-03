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

extension Tiems {
    /// UpdateRsgAsGroup请求参数结构体
    public struct UpdateRsgAsGroupRequest: TCRequestModel {
        /// 伸缩组 ID
        public let id: String

        /// 重命名名称
        public let name: String?

        /// 伸缩组最大节点数
        public let maxSize: UInt64?

        /// 伸缩组最小节点数
        public let minSize: UInt64?

        /// 伸缩组期望的节点数
        public let desiredSize: UInt64?

        public init(id: String, name: String? = nil, maxSize: UInt64? = nil, minSize: UInt64? = nil, desiredSize: UInt64? = nil) {
            self.id = id
            self.name = name
            self.maxSize = maxSize
            self.minSize = minSize
            self.desiredSize = desiredSize
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case maxSize = "MaxSize"
            case minSize = "MinSize"
            case desiredSize = "DesiredSize"
        }
    }

    /// UpdateRsgAsGroup返回参数结构体
    public struct UpdateRsgAsGroupResponse: TCResponseModel {
        /// 资源组的伸缩组
        public let rsgAsGroup: RsgAsGroup

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rsgAsGroup = "RsgAsGroup"
            case requestId = "RequestId"
        }
    }

    /// 更新资源组的伸缩组
    @available(*, deprecated, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func updateRsgAsGroup(_ input: UpdateRsgAsGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRsgAsGroupResponse> {
        self.client.execute(action: "UpdateRsgAsGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新资源组的伸缩组
    @available(*, deprecated, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func updateRsgAsGroup(_ input: UpdateRsgAsGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRsgAsGroupResponse {
        try await self.client.execute(action: "UpdateRsgAsGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新资源组的伸缩组
    @available(*, deprecated, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func updateRsgAsGroup(id: String, name: String? = nil, maxSize: UInt64? = nil, minSize: UInt64? = nil, desiredSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRsgAsGroupResponse> {
        let input = UpdateRsgAsGroupRequest(id: id, name: name, maxSize: maxSize, minSize: minSize, desiredSize: desiredSize)
        return self.client.execute(action: "UpdateRsgAsGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新资源组的伸缩组
    @available(*, deprecated, message: "因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。")
    @inlinable
    public func updateRsgAsGroup(id: String, name: String? = nil, maxSize: UInt64? = nil, minSize: UInt64? = nil, desiredSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRsgAsGroupResponse {
        let input = UpdateRsgAsGroupRequest(id: id, name: name, maxSize: maxSize, minSize: minSize, desiredSize: desiredSize)
        return try await self.client.execute(action: "UpdateRsgAsGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
