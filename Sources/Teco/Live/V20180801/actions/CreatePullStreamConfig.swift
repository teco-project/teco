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

extension Live {
    /// 添加拉流配置(该接口已下线,请使用新接口 CreateLivePullStreamTask)
    ///
    /// 创建临时拉流转推任务，目前限制添加10条任务。
    /// 该接口已下线,请使用新接口 CreateLivePullStreamTask。
    /// 注意：该接口用于创建临时拉流转推任务，
    /// 拉流源地址即 FromUrl 可以是腾讯或非腾讯数据源，
    /// 但转推目标地址即 ToUrl 目前限制为已注册的腾讯直播域名。
    @inlinable
    public func createPullStreamConfig(_ input: CreatePullStreamConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreatePullStreamConfigResponse > {
        self.client.execute(action: "CreatePullStreamConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加拉流配置(该接口已下线,请使用新接口 CreateLivePullStreamTask)
    ///
    /// 创建临时拉流转推任务，目前限制添加10条任务。
    /// 该接口已下线,请使用新接口 CreateLivePullStreamTask。
    /// 注意：该接口用于创建临时拉流转推任务，
    /// 拉流源地址即 FromUrl 可以是腾讯或非腾讯数据源，
    /// 但转推目标地址即 ToUrl 目前限制为已注册的腾讯直播域名。
    @inlinable
    public func createPullStreamConfig(_ input: CreatePullStreamConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePullStreamConfigResponse {
        try await self.client.execute(action: "CreatePullStreamConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreatePullStreamConfig请求参数结构体
    public struct CreatePullStreamConfigRequest: TCRequestModel {
        /// 源 Url ，用于拉流的地址。目前可支持直播流及点播文件。
        /// 注意：
        /// 1. 多个点播url之间使用空格拼接。
        /// 2. 目前上限支持10个url。
        /// 3. 目前不支持https协议。
        /// 4. 支持拉流文件格式：flv，rtmp，hls，mp4。
        public let fromUrl: String
        
        /// 目的 Url ，用于推流的地址，目前限制该目标地址为腾讯域名。
        /// 仅支持：rtmp 协议。
        public let toUrl: String
        
        /// 选择完成转拉推的服务所在区域:
        /// 1-深圳，
        /// 2-上海，
        /// 3-天津，
        /// 4-中国香港。
        public let areaId: Int64
        
        /// 选择完成转拉推服务使用的运营商网络：
        /// 1-电信，
        /// 2-移动，
        /// 3-联通，
        /// 4-其他。
        /// 注：AreaId 为4的时候，IspId 只能为其他。
        public let ispId: Int64
        
        /// 开始时间。
        /// 使用 UTC 格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        public let startTime: String
        
        /// 结束时间，注意：
        /// 1. 结束时间必须大于开始时间；
        /// 2. 结束时间和开始时间必须大于当前时间；
        /// 3. 结束时间 和 开始时间 间隔必须小于七天。
        /// 使用 UTC 格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        public let endTime: String
        
        public init (fromUrl: String, toUrl: String, areaId: Int64, ispId: Int64, startTime: String, endTime: String) {
            self.fromUrl = fromUrl
            self.toUrl = toUrl
            self.areaId = areaId
            self.ispId = ispId
            self.startTime = startTime
            self.endTime = endTime
        }
        
        enum CodingKeys: String, CodingKey {
            case fromUrl = "FromUrl"
            case toUrl = "ToUrl"
            case areaId = "AreaId"
            case ispId = "IspId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// CreatePullStreamConfig返回参数结构体
    public struct CreatePullStreamConfigResponse: TCResponseModel {
        /// 配置成功后的 ID。
        public let configId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
            case requestId = "RequestId"
        }
    }
}
