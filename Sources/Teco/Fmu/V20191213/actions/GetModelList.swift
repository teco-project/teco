//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Fmu {
    /// GetModelList请求参数结构体
    public struct GetModelListRequest: TCRequestModel {
        /// 起始序号，默认值为0。
        public let offset: Int64?

        /// 返回数量，默认值为10，最大值为100。
        public let limit: Int64?

        public init(offset: Int64? = nil, limit: Int64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// GetModelList返回参数结构体
    public struct GetModelListResponse: TCResponseModel {
        /// 唇色素材总数量。
        public let modelIdNum: Int64

        /// 素材数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modelInfos: [ModelInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case modelIdNum = "ModelIdNum"
            case modelInfos = "ModelInfos"
            case requestId = "RequestId"
        }
    }

    /// 查询唇色素材
    ///
    /// 查询已注册的唇色素材。
    @inlinable
    public func getModelList(_ input: GetModelListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetModelListResponse > {
        self.client.execute(action: "GetModelList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询唇色素材
    ///
    /// 查询已注册的唇色素材。
    @inlinable
    public func getModelList(_ input: GetModelListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetModelListResponse {
        try await self.client.execute(action: "GetModelList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询唇色素材
    ///
    /// 查询已注册的唇色素材。
    @inlinable
    public func getModelList(offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetModelListResponse > {
        self.getModelList(GetModelListRequest(offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 查询唇色素材
    ///
    /// 查询已注册的唇色素材。
    @inlinable
    public func getModelList(offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetModelListResponse {
        try await self.getModelList(GetModelListRequest(offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
