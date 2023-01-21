//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cvm {
    /// ModifyHpcClusterAttribute请求参数结构体
    public struct ModifyHpcClusterAttributeRequest: TCRequestModel {
        /// 高性能计算集群ID。
        public let hpcClusterId: String

        /// 高性能计算集群新名称。
        public let name: String?

        /// 高性能计算集群新备注。
        public let remark: String?

        public init(hpcClusterId: String, name: String? = nil, remark: String? = nil) {
            self.hpcClusterId = hpcClusterId
            self.name = name
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case hpcClusterId = "HpcClusterId"
            case name = "Name"
            case remark = "Remark"
        }
    }

    /// ModifyHpcClusterAttribute返回参数结构体
    public struct ModifyHpcClusterAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改高性能计算集群属性
    ///
    /// 修改高性能计算集群属性。
    @inlinable @discardableResult
    public func modifyHpcClusterAttribute(_ input: ModifyHpcClusterAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHpcClusterAttributeResponse> {
        self.client.execute(action: "ModifyHpcClusterAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改高性能计算集群属性
    ///
    /// 修改高性能计算集群属性。
    @inlinable @discardableResult
    public func modifyHpcClusterAttribute(_ input: ModifyHpcClusterAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHpcClusterAttributeResponse {
        try await self.client.execute(action: "ModifyHpcClusterAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改高性能计算集群属性
    ///
    /// 修改高性能计算集群属性。
    @inlinable @discardableResult
    public func modifyHpcClusterAttribute(hpcClusterId: String, name: String? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHpcClusterAttributeResponse> {
        self.modifyHpcClusterAttribute(ModifyHpcClusterAttributeRequest(hpcClusterId: hpcClusterId, name: name, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 修改高性能计算集群属性
    ///
    /// 修改高性能计算集群属性。
    @inlinable @discardableResult
    public func modifyHpcClusterAttribute(hpcClusterId: String, name: String? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHpcClusterAttributeResponse {
        try await self.modifyHpcClusterAttribute(ModifyHpcClusterAttributeRequest(hpcClusterId: hpcClusterId, name: name, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
