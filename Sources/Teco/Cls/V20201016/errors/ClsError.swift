public struct TCClsError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_BindedAlarm = "FailedOperation.BindedAlarm"
        case failedOperation_GetlogReachLimit = "FailedOperation.GetlogReachLimit"
        case failedOperation_InValidIndexRuleForSearchLow = "FailedOperation.InValidIndexRuleForSearchLow"
        case failedOperation_InvalidAlarm = "FailedOperation.InvalidAlarm"
        case failedOperation_InvalidContext = "FailedOperation.InvalidContext"
        case failedOperation_InvalidPeriod = "FailedOperation.InvalidPeriod"
        case failedOperation_LogsetConflict = "FailedOperation.LogsetConflict"
        case failedOperation_LogsetNotEmpty = "FailedOperation.LogsetNotEmpty"
        case failedOperation_MissingContent = "FailedOperation.MissingContent"
        case failedOperation_PeriodModifyForbidden = "FailedOperation.PeriodModifyForbidden"
        case failedOperation_QueryError = "FailedOperation.QueryError"
        case failedOperation_ReadQpsLimit = "FailedOperation.ReadQpsLimit"
        case failedOperation_SearchTimeout = "FailedOperation.SearchTimeout"
        case failedOperation_ShipperTaskNotToRetry = "FailedOperation.ShipperTaskNotToRetry"
        case failedOperation_SyntaxError = "FailedOperation.SyntaxError"
        case failedOperation_TagQpsLimit = "FailedOperation.TagQpsLimit"
        case failedOperation_TopicClosed = "FailedOperation.TopicClosed"
        case failedOperation_TopicIsolated = "FailedOperation.TopicIsolated"
        case failedOperation_WriteQpsLimit = "FailedOperation.WriteQpsLimit"
        case failedOperation_WriteTrafficLimit = "FailedOperation.WriteTrafficLimit"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_AlarmConflict = "InvalidParameter.AlarmConflict"
        case invalidParameter_AlarmNoticeConflict = "InvalidParameter.AlarmNoticeConflict"
        case invalidParameter_ConfigConflict = "InvalidParameter.ConfigConflict"
        case invalidParameter_Content = "InvalidParameter.Content"
        case invalidParameter_DbDuplication = "InvalidParameter.DbDuplication"
        case invalidParameter_ExportConflict = "InvalidParameter.ExportConflict"
        case invalidParameter_InValidIndexRuleForSearchLow = "InvalidParameter.InValidIndexRuleForSearchLow"
        case invalidParameter_IndexConflict = "InvalidParameter.IndexConflict"
        case invalidParameter_LogsetConflict = "InvalidParameter.LogsetConflict"
        case invalidParameter_MachineGroupConflict = "InvalidParameter.MachineGroupConflict"
        case invalidParameter_ShipperConflict = "InvalidParameter.ShipperConflict"
        case invalidParameter_TopicConflict = "InvalidParameter.TopicConflict"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_Config = "LimitExceeded.Config"
        case limitExceeded_Export = "LimitExceeded.Export"
        case limitExceeded_LogSearch = "LimitExceeded.LogSearch"
        case limitExceeded_LogSize = "LimitExceeded.LogSize"
        case limitExceeded_Logset = "LimitExceeded.Logset"
        case limitExceeded_MachineGroup = "LimitExceeded.MachineGroup"
        case limitExceeded_MachineGroupIp = "LimitExceeded.MachineGroupIp"
        case limitExceeded_MachineGroupIpLabels = "LimitExceeded.MachineGroupIpLabels"
        case limitExceeded_Partition = "LimitExceeded.Partition"
        case limitExceeded_SearchResources = "LimitExceeded.SearchResources"
        case limitExceeded_SearchResultTooLarge = "LimitExceeded.SearchResultTooLarge"
        case limitExceeded_Shipper = "LimitExceeded.Shipper"
        case limitExceeded_Tag = "LimitExceeded.Tag"
        case limitExceeded_Topic = "LimitExceeded.Topic"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case operationDenied_ACLFailed = "OperationDenied.ACLFailed"
        case operationDenied_AccountDestroy = "OperationDenied.AccountDestroy"
        case operationDenied_AccountIsolate = "OperationDenied.AccountIsolate"
        case operationDenied_AccountNotExists = "OperationDenied.AccountNotExists"
        case operationDenied_AlarmNotSupportForSearchLow = "OperationDenied.AlarmNotSupportForSearchLow"
        case operationDenied_AnalysisSwitchClose = "OperationDenied.AnalysisSwitchClose"
        case operationDenied_NewSyntaxNotSupported = "OperationDenied.NewSyntaxNotSupported"
        case operationDenied_NoticeHasAlarm = "OperationDenied.NoticeHasAlarm"
        case operationDenied_OperationNotSupportInSearchLow = "OperationDenied.OperationNotSupportInSearchLow"
        case operationDenied_TopicHasDataFormTask = "OperationDenied.TopicHasDataFormTask"
        case operationDenied_TopicHasDeliverFunction = "OperationDenied.TopicHasDeliverFunction"
        case operationDenied_TopicHasScheduleSqlTask = "OperationDenied.TopicHasScheduleSqlTask"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_AgentVersionNotExist = "ResourceNotFound.AgentVersionNotExist"
        case resourceNotFound_AlarmNotExist = "ResourceNotFound.AlarmNotExist"
        case resourceNotFound_AlarmNoticeNotExist = "ResourceNotFound.AlarmNoticeNotExist"
        case resourceNotFound_ConfigNotExist = "ResourceNotFound.ConfigNotExist"
        case resourceNotFound_ExportNotExist = "ResourceNotFound.ExportNotExist"
        case resourceNotFound_IndexNotExist = "ResourceNotFound.IndexNotExist"
        case resourceNotFound_LogsetNotExist = "ResourceNotFound.LogsetNotExist"
        case resourceNotFound_MachineGroupNotExist = "ResourceNotFound.MachineGroupNotExist"
        case resourceNotFound_PartitionNotExist = "ResourceNotFound.PartitionNotExist"
        case resourceNotFound_ShipperNotExist = "ResourceNotFound.ShipperNotExist"
        case resourceNotFound_ShipperTaskNotExist = "ResourceNotFound.ShipperTaskNotExist"
        case resourceNotFound_TopicNotExist = "ResourceNotFound.TopicNotExist"
        case unsupportedOperation = "UnsupportedOperation"
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
    /// Initializer used by ``TCClient`` to match an error of this type.
    ///
    /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
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
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCClsError {
        TCClsError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCClsError {
        TCClsError(.failedOperation)
    }
    
    /// 告警策略通知模板已经绑定到了某个告警策略上。
    public static var failedOperation_BindedAlarm: TCClsError {
        TCClsError(.failedOperation_BindedAlarm)
    }
    
    /// 检索日志触发最大条数限制。
    public static var failedOperation_GetlogReachLimit: TCClsError {
        TCClsError(.failedOperation_GetlogReachLimit)
    }
    
    /// 低频不支持配置kv和tag索引。
    public static var failedOperation_InValidIndexRuleForSearchLow: TCClsError {
        TCClsError(.failedOperation_InValidIndexRuleForSearchLow)
    }
    
    /// 该告警策略状态异常，请检查下日志主题ID是否都存在。
    public static var failedOperation_InvalidAlarm: TCClsError {
        TCClsError(.failedOperation_InvalidAlarm)
    }
    
    /// 检索游标已失效或不存在。
    ///
    /// 请重新输入有效参数。
    public static var failedOperation_InvalidContext: TCClsError {
        TCClsError(.failedOperation_InvalidContext)
    }
    
    /// 离线存储保存时间不得少于7天。
    public static var failedOperation_InvalidPeriod: TCClsError {
        TCClsError(.failedOperation_InvalidPeriod)
    }
    
    /// 相同的日志集已存在。
    public static var failedOperation_LogsetConflict: TCClsError {
        TCClsError(.failedOperation_LogsetConflict)
    }
    
    /// 日志集下存在日志主题。
    public static var failedOperation_LogsetNotEmpty: TCClsError {
        TCClsError(.failedOperation_LogsetNotEmpty)
    }
    
    /// 无效的Content。
    public static var failedOperation_MissingContent: TCClsError {
        TCClsError(.failedOperation_MissingContent)
    }
    
    /// 修改的生命周期被禁止。
    public static var failedOperation_PeriodModifyForbidden: TCClsError {
        TCClsError(.failedOperation_PeriodModifyForbidden)
    }
    
    /// 查询语句运行失败。
    ///
    /// 请检查索引配置及查询语句。若无法解决，请联系智能客服或提交工单。
    public static var failedOperation_QueryError: TCClsError {
        TCClsError(.failedOperation_QueryError)
    }
    
    /// 读qps超过限制。
    public static var failedOperation_ReadQpsLimit: TCClsError {
        TCClsError(.failedOperation_ReadQpsLimit)
    }
    
    /// 查询超时。
    ///
    /// 请稍后重试或优化语句。若无法解决，请联系智能客服或提交工单。
    public static var failedOperation_SearchTimeout: TCClsError {
        TCClsError(.failedOperation_SearchTimeout)
    }
    
    /// 投递任务不允许重试。
    public static var failedOperation_ShipperTaskNotToRetry: TCClsError {
        TCClsError(.failedOperation_ShipperTaskNotToRetry)
    }
    
    /// 查询语句解析错误。
    ///
    /// 请检查语法并输入正确语句。
    public static var failedOperation_SyntaxError: TCClsError {
        TCClsError(.failedOperation_SyntaxError)
    }
    
    /// 请求标签服务限频。
    ///
    /// 控制请求次数
    public static var failedOperation_TagQpsLimit: TCClsError {
        TCClsError(.failedOperation_TagQpsLimit)
    }
    
    /// 日志主题已关闭。
    public static var failedOperation_TopicClosed: TCClsError {
        TCClsError(.failedOperation_TopicClosed)
    }
    
    /// 日志主题已隔离。
    ///
    /// 请检查日志主题状态。若无法解决，请联系智能客服或提交工单。
    public static var failedOperation_TopicIsolated: TCClsError {
        TCClsError(.failedOperation_TopicIsolated)
    }
    
    /// 写qps超过限制。
    public static var failedOperation_WriteQpsLimit: TCClsError {
        TCClsError(.failedOperation_WriteQpsLimit)
    }
    
    /// 写流量超过限制。
    public static var failedOperation_WriteTrafficLimit: TCClsError {
        TCClsError(.failedOperation_WriteTrafficLimit)
    }
    
    /// 内部错误。
    public static var internalError: TCClsError {
        TCClsError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCClsError {
        TCClsError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCClsError {
        TCClsError(.invalidParameterValue)
    }
    
    /// 告警策略已经存在。
    public static var invalidParameter_AlarmConflict: TCClsError {
        TCClsError(.invalidParameter_AlarmConflict)
    }
    
    /// 告警策略通知模板已经存在。
    public static var invalidParameter_AlarmNoticeConflict: TCClsError {
        TCClsError(.invalidParameter_AlarmNoticeConflict)
    }
    
    /// 相同的采集配置规则已经存在。
    public static var invalidParameter_ConfigConflict: TCClsError {
        TCClsError(.invalidParameter_ConfigConflict)
    }
    
    /// 无效的Content。
    public static var invalidParameter_Content: TCClsError {
        TCClsError(.invalidParameter_Content)
    }
    
    /// 数据库唯一键冲突。
    ///
    /// 数据已经存在，检查参数是否填写有误。
    public static var invalidParameter_DbDuplication: TCClsError {
        TCClsError(.invalidParameter_DbDuplication)
    }
    
    public static var invalidParameter_ExportConflict: TCClsError {
        TCClsError(.invalidParameter_ExportConflict)
    }
    
    /// 低频不支持配置kv和tag索引。
    public static var invalidParameter_InValidIndexRuleForSearchLow: TCClsError {
        TCClsError(.invalidParameter_InValidIndexRuleForSearchLow)
    }
    
    /// 指定日志主题已经存在索引规则。
    public static var invalidParameter_IndexConflict: TCClsError {
        TCClsError(.invalidParameter_IndexConflict)
    }
    
    /// 相同的日志集已存在。
    public static var invalidParameter_LogsetConflict: TCClsError {
        TCClsError(.invalidParameter_LogsetConflict)
    }
    
    /// 同名机器组已经存在。
    public static var invalidParameter_MachineGroupConflict: TCClsError {
        TCClsError(.invalidParameter_MachineGroupConflict)
    }
    
    /// 投递规则命名冲突。
    public static var invalidParameter_ShipperConflict: TCClsError {
        TCClsError(.invalidParameter_ShipperConflict)
    }
    
    /// 指定日志集下已经有同名的日志主题。
    public static var invalidParameter_TopicConflict: TCClsError {
        TCClsError(.invalidParameter_TopicConflict)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCClsError {
        TCClsError(.limitExceeded)
    }
    
    /// 采集规则配置超过最大值限制。
    public static var limitExceeded_Config: TCClsError {
        TCClsError(.limitExceeded_Config)
    }
    
    /// 日志导出数量超出限制。
    public static var limitExceeded_Export: TCClsError {
        TCClsError(.limitExceeded_Export)
    }
    
    /// 并发查询超过限制，单topic并发最大值15。
    public static var limitExceeded_LogSearch: TCClsError {
        TCClsError(.limitExceeded_LogSearch)
    }
    
    /// 日志大小超过限制。
    public static var limitExceeded_LogSize: TCClsError {
        TCClsError(.limitExceeded_LogSize)
    }
    
    /// 日志集数量超出限制。
    public static var limitExceeded_Logset: TCClsError {
        TCClsError(.limitExceeded_Logset)
    }
    
    /// 机器组超过限制。
    public static var limitExceeded_MachineGroup: TCClsError {
        TCClsError(.limitExceeded_MachineGroup)
    }
    
    /// 机器组IP超过限制。
    public static var limitExceeded_MachineGroupIp: TCClsError {
        TCClsError(.limitExceeded_MachineGroupIp)
    }
    
    /// 机器组Label超过限制。
    public static var limitExceeded_MachineGroupIpLabels: TCClsError {
        TCClsError(.limitExceeded_MachineGroupIpLabels)
    }
    
    /// 分区超过限制。
    public static var limitExceeded_Partition: TCClsError {
        TCClsError(.limitExceeded_Partition)
    }
    
    /// 修改检索语句，减少查询范围。
    public static var limitExceeded_SearchResources: TCClsError {
        TCClsError(.limitExceeded_SearchResources)
    }
    
    /// 检索接口返回的日志量太大， 超过20MB限制。
    ///
    /// 可以把limit参数降低一点
    public static var limitExceeded_SearchResultTooLarge: TCClsError {
        TCClsError(.limitExceeded_SearchResultTooLarge)
    }
    
    /// 投递规则超出限制。
    public static var limitExceeded_Shipper: TCClsError {
        TCClsError(.limitExceeded_Shipper)
    }
    
    /// tag超过限制。
    public static var limitExceeded_Tag: TCClsError {
        TCClsError(.limitExceeded_Tag)
    }
    
    /// 日志主题数目超过限制。
    public static var limitExceeded_Topic: TCClsError {
        TCClsError(.limitExceeded_Topic)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCClsError {
        TCClsError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCClsError {
        TCClsError(.operationDenied)
    }
    
    /// ACL校验失败。
    public static var operationDenied_ACLFailed: TCClsError {
        TCClsError(.operationDenied_ACLFailed)
    }
    
    /// 账户已销毁。
    public static var operationDenied_AccountDestroy: TCClsError {
        TCClsError(.operationDenied_AccountDestroy)
    }
    
    /// 账户欠费。
    public static var operationDenied_AccountIsolate: TCClsError {
        TCClsError(.operationDenied_AccountIsolate)
    }
    
    /// 账户不存在。
    ///
    /// 需要开通cls服务
    public static var operationDenied_AccountNotExists: TCClsError {
        TCClsError(.operationDenied_AccountNotExists)
    }
    
    /// 低频不支持告警。
    public static var operationDenied_AlarmNotSupportForSearchLow: TCClsError {
        TCClsError(.operationDenied_AlarmNotSupportForSearchLow)
    }
    
    /// 字段没有开启分析功能。
    ///
    /// 开启即可
    public static var operationDenied_AnalysisSwitchClose: TCClsError {
        TCClsError(.operationDenied_AnalysisSwitchClose)
    }
    
    /// 该资源暂不支持新语法，联系helper处理。
    public static var operationDenied_NewSyntaxNotSupported: TCClsError {
        TCClsError(.operationDenied_NewSyntaxNotSupported)
    }
    
    /// 通知模板已绑定告警，无法删除。
    public static var operationDenied_NoticeHasAlarm: TCClsError {
        TCClsError(.operationDenied_NoticeHasAlarm)
    }
    
    /// 操作低频检索不支持。
    public static var operationDenied_OperationNotSupportInSearchLow: TCClsError {
        TCClsError(.operationDenied_OperationNotSupportInSearchLow)
    }
    
    /// topic绑定了数据加工。
    public static var operationDenied_TopicHasDataFormTask: TCClsError {
        TCClsError(.operationDenied_TopicHasDataFormTask)
    }
    
    /// topic绑定了函数投递。
    ///
    /// 需要删除函数投递之后， 才能删除topic
    public static var operationDenied_TopicHasDeliverFunction: TCClsError {
        TCClsError(.operationDenied_TopicHasDeliverFunction)
    }
    
    public static var operationDenied_TopicHasScheduleSqlTask: TCClsError {
        TCClsError(.operationDenied_TopicHasScheduleSqlTask)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCClsError {
        TCClsError(.resourceNotFound)
    }
    
    /// agent version不存在。
    public static var resourceNotFound_AgentVersionNotExist: TCClsError {
        TCClsError(.resourceNotFound_AgentVersionNotExist)
    }
    
    /// 告警策略不存在。
    public static var resourceNotFound_AlarmNotExist: TCClsError {
        TCClsError(.resourceNotFound_AlarmNotExist)
    }
    
    /// 告警策略通知模板不存在。
    public static var resourceNotFound_AlarmNoticeNotExist: TCClsError {
        TCClsError(.resourceNotFound_AlarmNoticeNotExist)
    }
    
    /// 指定的采集规则配置不存在。
    public static var resourceNotFound_ConfigNotExist: TCClsError {
        TCClsError(.resourceNotFound_ConfigNotExist)
    }
    
    /// 日志导出不存在。
    public static var resourceNotFound_ExportNotExist: TCClsError {
        TCClsError(.resourceNotFound_ExportNotExist)
    }
    
    /// 索引不存在。
    public static var resourceNotFound_IndexNotExist: TCClsError {
        TCClsError(.resourceNotFound_IndexNotExist)
    }
    
    /// 指定的日志集不存在。
    public static var resourceNotFound_LogsetNotExist: TCClsError {
        TCClsError(.resourceNotFound_LogsetNotExist)
    }
    
    /// 机器组不存在。
    public static var resourceNotFound_MachineGroupNotExist: TCClsError {
        TCClsError(.resourceNotFound_MachineGroupNotExist)
    }
    
    /// 分区不存在。
    public static var resourceNotFound_PartitionNotExist: TCClsError {
        TCClsError(.resourceNotFound_PartitionNotExist)
    }
    
    /// 投递规则不存在。
    ///
    /// 检查投递规则是否存在。
    public static var resourceNotFound_ShipperNotExist: TCClsError {
        TCClsError(.resourceNotFound_ShipperNotExist)
    }
    
    /// 投递任务不存在。
    public static var resourceNotFound_ShipperTaskNotExist: TCClsError {
        TCClsError(.resourceNotFound_ShipperTaskNotExist)
    }
    
    /// 日志主题不存在。
    ///
    /// 请输入正确的日志主题ID。若无法解决，请联系智能客服或提交工单。
    public static var resourceNotFound_TopicNotExist: TCClsError {
        TCClsError(.resourceNotFound_TopicNotExist)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCClsError {
        TCClsError(.unsupportedOperation)
    }
}

extension TCClsError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, LimitExceeded.self, OperationDenied.self, ResourceNotFound.self]
    }
}

extension TCClsError: Equatable {
    public static func == (lhs: TCClsError, rhs: TCClsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCClsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCClsError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
