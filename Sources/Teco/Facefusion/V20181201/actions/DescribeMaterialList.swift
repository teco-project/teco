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

extension Facefusion {
    /// 查询素材列表
    ///
    /// 通常通过腾讯云人脸融合的控制台可以查看到素材相关的参数数据，可以满足使用。本接口返回活动的素材数据，包括素材状态等。用于用户通过Api查看素材相关数据，方便使用。
    @inlinable
    public func describeMaterialList(_ input: DescribeMaterialListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMaterialListResponse > {
        self.client.execute(action: "DescribeMaterialList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询素材列表
    ///
    /// 通常通过腾讯云人脸融合的控制台可以查看到素材相关的参数数据，可以满足使用。本接口返回活动的素材数据，包括素材状态等。用于用户通过Api查看素材相关数据，方便使用。
    @inlinable
    public func describeMaterialList(_ input: DescribeMaterialListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaterialListResponse {
        try await self.client.execute(action: "DescribeMaterialList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeMaterialList请求参数结构体
    public struct DescribeMaterialListRequest: TCRequestModel {
        /// 活动Id
        public let activityId: Int64
        
        /// 素材Id
        public let materialId: String?
        
        /// 每次拉取条数
        public let limit: Int64?
        
        /// 偏移量
        public let offset: Int64?
        
        public init (activityId: Int64, materialId: String?, limit: Int64?, offset: Int64?) {
            self.activityId = activityId
            self.materialId = materialId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case materialId = "MaterialId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeMaterialList返回参数结构体
    public struct DescribeMaterialListResponse: TCResponseModel {
        /// 素材列表数据
        public let materialInfos: [PublicMaterialInfos]
        
        /// 素材条数
        public let count: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case materialInfos = "MaterialInfos"
            case count = "Count"
            case requestId = "RequestId"
        }
    }
}
