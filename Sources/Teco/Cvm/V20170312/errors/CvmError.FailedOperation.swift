//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCCvmError {
    public struct FailedOperation: TCErrorType {
        enum Code: String {
            case accountAlreadyExists = "FailedOperation.AccountAlreadyExists"
            case accountIsYourSelf = "FailedOperation.AccountIsYourSelf"
            case byolImageShareFailed = "FailedOperation.BYOLImageShareFailed"
            case disasterRecoverGroupNotFound = "FailedOperation.DisasterRecoverGroupNotFound"
            case illegalTagKey = "FailedOperation.IllegalTagKey"
            case illegalTagValue = "FailedOperation.IllegalTagValue"
            case inquiryPriceFailed = "FailedOperation.InquiryPriceFailed"
            case inquiryRefundPriceFailed = "FailedOperation.InquiryRefundPriceFailed"
            case invalidImageState = "FailedOperation.InvalidImageState"
            case invalidInstanceApplicationRoleEmr = "FailedOperation.InvalidInstanceApplicationRoleEmr"
            case noAvailableIpAddressCountInSubnet = "FailedOperation.NoAvailableIpAddressCountInSubnet"
            case notFoundEIP = "FailedOperation.NotFoundEIP"
            case notMasterAccount = "FailedOperation.NotMasterAccount"
            case placementSetNotEmpty = "FailedOperation.PlacementSetNotEmpty"
            case promotionalPerioRestriction = "FailedOperation.PromotionalPerioRestriction"
            case promotionalRegionRestriction = "FailedOperation.PromotionalRegionRestriction"
            case qImageShareFailed = "FailedOperation.QImageShareFailed"
            case rImageShareFailed = "FailedOperation.RImageShareFailed"
            case securityGroupActionFailed = "FailedOperation.SecurityGroupActionFailed"
            case snapshotSizeLargerThanDataSize = "FailedOperation.SnapshotSizeLargerThanDataSize"
            case snapshotSizeLessThanDataSize = "FailedOperation.SnapshotSizeLessThanDataSize"
            case tagKeyReserved = "FailedOperation.TagKeyReserved"
            case tatAgentNotSupport = "FailedOperation.TatAgentNotSupport"
            case unreturnable = "FailedOperation.Unreturnable"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 账号已经存在
        public static var accountAlreadyExists: FailedOperation {
            FailedOperation(.accountAlreadyExists)
        }
        
        /// 账号为当前用户
        public static var accountIsYourSelf: FailedOperation {
            FailedOperation(.accountIsYourSelf)
        }
        
        public static var byolImageShareFailed: FailedOperation {
            FailedOperation(.byolImageShareFailed)
        }
        
        /// 未找到指定的容灾组
        public static var disasterRecoverGroupNotFound: FailedOperation {
            FailedOperation(.disasterRecoverGroupNotFound)
        }
        
        /// 标签键存在不合法字符
        public static var illegalTagKey: FailedOperation {
            FailedOperation(.illegalTagKey)
        }
        
        /// 标签值存在不合法字符。
        public static var illegalTagValue: FailedOperation {
            FailedOperation(.illegalTagValue)
        }
        
        /// 询价失败
        public static var inquiryPriceFailed: FailedOperation {
            FailedOperation(.inquiryPriceFailed)
        }
        
        /// 查询退换价格失败，找不到付款订单，请检查设备 <code>ins-xxxxxxx</code> 是否已过期。
        public static var inquiryRefundPriceFailed: FailedOperation {
            FailedOperation(.inquiryRefundPriceFailed)
        }
        
        public static var invalidImageState: FailedOperation {
            FailedOperation(.invalidImageState)
        }
        
        /// 请求不支持<code>EMR</code>的实例<code>ins-xxxxxxxx</code>。
        public static var invalidInstanceApplicationRoleEmr: FailedOperation {
            FailedOperation(.invalidInstanceApplicationRoleEmr)
        }
        
        /// 子网可用IP已耗尽。
        public static var noAvailableIpAddressCountInSubnet: FailedOperation {
            FailedOperation(.noAvailableIpAddressCountInSubnet)
        }
        
        /// 当前实例没有弹性IP
        public static var notFoundEIP: FailedOperation {
            FailedOperation(.notFoundEIP)
        }
        
        /// 账号为协作者，请填写主账号
        public static var notMasterAccount: FailedOperation {
            FailedOperation(.notMasterAccount)
        }
        
        /// 指定的置放群组非空。
        public static var placementSetNotEmpty: FailedOperation {
            FailedOperation(.placementSetNotEmpty)
        }
        
        /// 促销期内购买的实例不允许调整配置或计费模式。
        public static var promotionalPerioRestriction: FailedOperation {
            FailedOperation(.promotionalPerioRestriction)
        }
        
        /// 暂无法在此国家/地区提供该服务。
        public static var promotionalRegionRestriction: FailedOperation {
            FailedOperation(.promotionalRegionRestriction)
        }
        
        /// 镜像共享失败。
        public static var qImageShareFailed: FailedOperation {
            FailedOperation(.qImageShareFailed)
        }
        
        /// 镜像共享失败。
        public static var rImageShareFailed: FailedOperation {
            FailedOperation(.rImageShareFailed)
        }
        
        /// 安全组操作失败。
        public static var securityGroupActionFailed: FailedOperation {
            FailedOperation(.securityGroupActionFailed)
        }
        
        /// 快照容量大于磁盘大小，请选用更大的磁盘空间。
        public static var snapshotSizeLargerThanDataSize: FailedOperation {
            FailedOperation(.snapshotSizeLargerThanDataSize)
        }
        
        /// 不支持快照size小于云盘size。
        public static var snapshotSizeLessThanDataSize: FailedOperation {
            FailedOperation(.snapshotSizeLessThanDataSize)
        }
        
        /// 请求中指定的标签键为系统预留标签，禁止创建
        public static var tagKeyReserved: FailedOperation {
            FailedOperation(.tagKeyReserved)
        }
        
        /// 镜像是公共镜像并且启用了自动化助手服务，但它不符合 Linux&amp;x86_64。
        public static var tatAgentNotSupport: FailedOperation {
            FailedOperation(.tatAgentNotSupport)
        }
        
        /// 实例无法退还。
        public static var unreturnable: FailedOperation {
            FailedOperation(.unreturnable)
        }
    }
}

extension TCCvmError.FailedOperation: Equatable {
    public static func == (lhs: TCCvmError.FailedOperation, rhs: TCCvmError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCvmError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCvmError.FailedOperation {
    public func toCvmError() -> TCCvmError {
        guard let code = TCCvmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCvmError(code, context: self.context)
    }
}